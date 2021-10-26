-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: healthcaresystem
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--
DROP DATABASE IF EXISTS `healthcare_system`;
CREATE DATABASE `healthcare_system`;
USE `healthcare_system`;

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author_id` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'admin','admin',0,1),(2,'doctor1','12345',1,1),(3,'doctor2','12345',1,1),(4,'doctor3','12345',1,1),(5,'doctor4','12345',1,1),(6,'doctor5','12345',1,1),(7,'doctor6','12345',1,1),(8,'doctor7','12345',1,1),(9,'doctor8','12345',1,1),(10,'doctor9','12345',1,1),(11,'doctor10','12345',1,1),(12,'doctor11','12345',1,1),(13,'doctor12','12345',1,1),(14,'doctor13','12345',1,1),(15,'doctor14','12345',1,1),(16,'doctor15','12345',1,1),(17,'doctor16','12345',1,1),(18,'doctor17','12345',1,1),(19,'doctor18','12345',1,1),(20,'doctor19','12345',1,1),(21,'doctor20','12345',1,1),(22,'patient1','12345',2,1),(23,'patient2','12345',2,1),(24,'patient3','12345',2,1),(25,'patient4','12345',2,1),(26,'patient5','12345',2,1),(27,'patient6','12345',2,1),(28,'patient7','12345',2,1),(29,'patient8','12345',2,1),(30,'patient9','12345',2,1),(31,'patient10','12345',2,1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `slot_id` int DEFAULT NULL,
  `description` longtext,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  KEY `slot_id` (`slot_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`slot_id`) REFERENCES `timetable` (`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `blog_id` int NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `date` date DEFAULT NULL,
  `image` longtext,
  `description` longtext,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Percutaneous heart valve replacement','2020-05-17','https://vinmec-prod.s3.amazonaws.com/images/20190426_040437_971221_hep-ho-van-dong-mac.max-1800x1800.jpg','The article was professionally consulted by Dr. Nguyen Van Duong - Interventional Cardiologist - Cardiovascular Center - Vinmec Central Park International General Hospital.\n\nPercutaneous valve replacement without surgery is one of the most complex heart valve replacement techniques in the world, helping patients\' health to be significantly improved, especially the ability to recover quickly. Vinmec is the first hospital in Vietnam to perform this technique independently. Please refer to the non-surgical percutaneous valve replacement at Vinmec to better understand this method.\n\n1. What is transcatheter aortic valve replacement (TAVI)?\nPercutaneous aortic valve replacement is currently an alternative to aortic valve replacement surgery in patients with aortic stenosis and at very high surgical risk or no longer indicated for surgery. The valve is attached to a device that is threaded through the skin into the ascending femoral artery and attached to the aortic valve.\n\nPercutaneous aortic valve replacement was first used in patients with tight aortic stenosis who were refused surgery by surgeons due to the high risk of surgery in 2002 and was performed by Dr. Interventional cardiologist Dr. Alain Cribier. Officially and regularly applied for about 10 years now. Currently, Vinmec is the first hospital in Vietnam to perform this technique independently.\n\n2. Designated object\nThis method is only applicable to patients who:\n\nPatients over 60 years of age with severe aortic stenosis (valvular orifice area < 1 cm2, mean transvalvular gradient > 40 mmHg).\nHave aortic and peripheral artery anatomy appropriate to the technique.\nHave a desire to perform TAVI.\nApproved by the cardiology team (heart team including internal cardiologist, cardiothoracic surgeon, interventional cardiologist, anesthesiologist) approved.\nPatients with aortic valve stenosis\nElderly patients with severe aortic stenosis can apply the technique\nbanner image\n\n3. Implementation process\nThis method is done through the following steps:\n\nStep 1: The patient will be performed laboratory tests (echocardiography, CT scan as well as other blood tests) to assess the anatomical fit of the valve structure and blood vessels. Coronary angiography and aortic arch, access artery assesses the extent of damage to the coronary system, the degree of calcification of the aortic valve as well as the vascular access.\n\nStep 2: Consultation through the cardiology team to get consensus and appropriate appointment for the patient. Explain to patients and relatives the indications, costs, possible complications before, during and after the procedure.\n\nStep 3: Do the trick.\n\nOutstanding advantage\n\nPercutaneous aortic valve replacement is one of the most modern and complex heart valve replacement techniques in the world. With this technique, doctors will thread a tube through the skin from the femoral artery to the aorta to replace the heart valve, which increases the likelihood of success, reduces the risk of bleeding, and avoids many dangerous complications.\nThis method is less invasive, gentler and simpler than conventional aortic valve replacement surgery. Doctors do not have to drive along the patient\'s sternum, do not have to run an artificial cardiopulmonary bypass machine, do not have general anesthesia, so the risk of complications is minimized.\nThe patient\'s recovery time is also faster, only 2-6 days compared to 1-2 weeks if open surgery.\nThis is considered a lifeline for patients who cannot tolerate surgery because of old age, weakness or chronic diseases.\n\n4. Why should this technique be done at Vinmec?\nPercutaneous aortic valve replacement patient at Vinmec\nPercutaneous aortic valve replacement patient at Vinmec\nVinmec is the only place in Vietnam that is equipped with a Hybrid room equipped with advanced equipment such as DSA angiography machine, anesthesia machine with the most closely integrated patient hemodynamic monitoring software (PiCCO system, entropy...). Therefore, Hybird operating room can meet the requirements of surgery and angioplasty, coronary stenting, aortic stent graft, open heart surgery, heart valve replacement for congenital heart diseases with the least invasive technique. , safely help patients recover health soon.\n\nThe cardiology team works in unity and mutual support, doctors Pham Thanh Van, doctor Nguyen Van Phong, doctor Le Duc Hiep who participated in performing the surgery are all trained directly by foreign experts.\n\nAs the only place in Vietnam awarded the certificate of \"Independent aortic valve replacement center in Vietnam\" and Prof. Vo Thanh Nhan is the first interventional cardiologist to be awarded the \"Proctor\" certificate in Vietnam. Vinmec\'s further goal is to become an excellent interventional cardiology center according to US standards, integrating with the world\'s level of cardiovascular intervention. '),(2,'Robotic-assisted laparoscopy','2020-05-15','https://vinmec-prod.s3.amazonaws.com/images/20191022_152728_263158_phau-thuat-robot-vi.max-1800x1800.jpg','Robotic-assisted laparoscopy\n\nPosted by Master, Doctor Nguyen Ngoc Khanh - Head of Department of Gastroenterology - Urology - Robotic Surgery & Pediatric Surgery, Vinmec Times City International General Hospital.\n\nRobotic surgery with sophisticated structure can meet the surgical needs with the highest requirements. The article aims to provide readers with basic information about the history of development, generations of surgical robots, operation methods and achievements of current robotic surgery, especially the most modern surgical robots today. - Da Vinci.\n\n1. History of surgical robot development\nThe term \"robot\" was first used by Czech playwright Karel Capek in 1921 in his play Rossom\'s Universal Robots. It comes from the word “robota”, which means “forced labor”.\nThe world\'s first surgical robot was Arthrobot, used in Vancouver, Canada in 1983.\nIn 1985, the robot PUMA560, performed CT-guided brain biopsies.\nIn 1988, the robot PROBOT, at Imperial College London, performed prostate surgery.\nIn 1992, Integrated Corporation\'s ROBODOC robot performed precise femur grinding in hip replacement surgery, being the first robot approved by the FDA in 2008.\nIn 1994, the first endoscopic camera holder AESOP robot was approved by the FDA. NASA funded Computer Motion, the company that produced AESOP, with the goal of creating a robotic arm that could be used in space but ended up being the center-camera arm in laparoscopic surgeries.\nThe voice control upgrade was introduced in 1996 with AESOP 2000.\nUpgrading the 7-way operation to mimic the human hand was implemented in 1998 with AESOP 3000.\nZEUS was introduced commercially in 1998 and started the idea of ??remote robotic surgery.\nThe merger of two companies Intuitive Surgical (founded 1995, products are Mona and Leonardo robots) with Computer Motion (the company that created the voice-controlled AESOP surgical robots and ZEUS remote surgery) in March, 2003 brought the surgical robotics industry to the next level, creating the Da Vinci surgical robotic system.\nDa Vinci has now produced up to the fourth generation Xi and the SP series of Single Incision Surgical Robots.\n2. Classification of Surgical Robots\nDepending on the classification criteria, there are different classifications. Based on the autonomous operation of the robot, it can be temporarily divided into 3 types:\n\nActive system: The robot operates essentially automatically (while still under the surgeon\'s control) and performs pre-programmed tasks. PROBOT and ROBODOC are good examples of this system.\nSemi-active system: Partial automatic mixing with surgeon control.\nPassive system (Master–slave system): Operates under the complete control of the surgeon (Vinci® and ZEUS) without any pre-programming.\n3. How Surgical Robots Work Today \nActive system: The robot operates essentially automatically (while still under the surgeon\'s control) and performs pre-programmed tasks. PROBOT and ROBODOC are good examples of this system.\nSemi-active system: Partial automatic mixing with surgeon control.\nPassive system (Master–slave system): Operates under the complete control of the surgeon (Vinci® and ZEUS) without any pre-programming.\n3. How Surgical Robots Work Today\nDiagram of the robot system\nDiagram of robotic surgery system\nThe robot has 3 separate but interconnected parts:\n\nThe vision cart includes an endoscope camera, camcorder, computer - microprocessor - robot brain and other devices to create a 3D image of the operation.\nThe da Vinci Xi . Surgical Robot System\nThe da Vinci Xi . Surgical Robot System\nThe tower, patient cart is a robotic component that directly performs surgery on a patient. It has robotic arms (4 arms), 3 of which can hold different surgical instruments and one holds a 3D camera. These arms are controlled by a computer that is able to accurately process and reproduce the movements of the surgeon\'s hand. Articulated surgical instruments are connected to the robot\'s arm and inserted into the patient\'s body through a small tube called a cannule. The surgeon\'s hand movements are scaled and filtered by the computer to remove the vibrations caused by hand tremors which are then converted into corresponding micro-motions of the surgical instruments. At the same time, the camera delivers realistic 3D images to the surgeon\'s console. The reduction ratio can be adjusted, for example, if we choose 3:1 ratio, when the surgeon\'s hand moves 6cm, the robot\'s instrument moves exactly and 2cm respectively.\nRobot Tower\nRobot Tower\nThe console is where the surgeo... (134 KB left)');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_feedbacks`
--

DROP TABLE IF EXISTS `doctor_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_feedbacks` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `content` longtext,
  `rate` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `doctor_feedbacks_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  CONSTRAINT `doctor_feedbacks_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_feedbacks`
--

LOCK TABLES `doctor_feedbacks` WRITE;
/*!40000 ALTER TABLE `doctor_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` tinyint DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` longtext,
  `role` longtext,
  `type_id` int DEFAULT NULL,
  `image` longtext,
  `description` longtext,
  `account_id` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `account_id` (`account_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `doctors_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `specialities` (`type_id`),
  CONSTRAINT `doctors_chk_1` CHECK (((not((`phone` like _utf8mb4'%[^0-9]%'))) and (char_length(rtrim(`phone`)) >= 8) and (char_length(rtrim(`phone`)) <= 10)))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Phiplippe Macaire',1,'1984-06-28','0913028592','philippe02@gmail.com','Head of Department of Anesthesiology',1,'https://vinmec-prod.s3.amazonaws.com/images/15_08_2019_03_13_38_444466.jpeg','                                                Professor, Doctor, Doctor Philippe Macaire has devoted more than 30 years in the field of Anesthesia - pain treatment, is a strong expert in: Anesthesia and resuscitation in pediatric surgery. Difficult airway management and difficult intubation. Ultrasound-guided vertebral plane (ESP) anesthesia for open-heart and thoracic surgery, new technique for the treatment of non-opioid pain. Monitoring ventilation for obese patients during bariatric surgery. Palliative care for the sick.',2),(2,'Khanritonchyk Aksana',0,'1990-12-20','0382932501','aksana2012@gmail.com','Doctor of Obstetrics and Gynecology ',10,'https://vinmec-prod.s3.amazonaws.com/images/18_02_2019_07_24_42_217499.jpeg','Dr. Kharitonchyk Aksana has more than 20 years of experience in the field of Obstetrics and Gynecology, especially in treating fibroids, cysts, urinary incontinence, perimenopausal disorders, menopause, prenatal diagnosis. , genetic diseases, pregnancy management, treatment of male diseases, social diseases and male and female infertility...',3),(3,'Reinel Martin',1,'1975-06-11','0385923123','martin12n@gmail.com','Cardiologist',4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMJzEZNXtuRhy2YQE3p4mRfv6VhCsN2mWSEw&usqp=CAU','Master, Dr. Reinel Martin Alvarez Plasencia has 23 years of experience working in the field of Cardiology, especially with strong expertise in echocardiography and the treatment of cardiovascular diseases including hypertension, arterial disease. coronary, valvular diseases, heart failure, cardiomyopathies, cardiovascular diseases systemic disorders, dyslipidemia, congenital heart disease and arrhythmias.',4),(4,'Thanh Nhan',1,'1980-07-12','0386123824','thanhnhan@gmail.com','Cardiologist ',2,'https://www.vinmec.com/vi/danh-sach/bac-si/vo-thanh-nhan-50866/tim-mach#!hinh-anh','The first expert in Vietnam on percutaneous arterial intervention (TAVI), has 40 years of experience teaching in the field of Cardiology at the University of Medicine and Pharmacy in Ho Chi Minh City, Cho Ray Hospital.',5),(5,'Pham Nhat An',1,'1988-09-17','0273856283','anpn1709@gmail.com','Pediatrics Department',11,'https://vinmec-prod.s3.amazonaws.com/images/05_01_2019_03_03_31_362064.jpeg','Prof. TS.BS Pham Nhat An has 45 years of experience in the field of Pediatrics, specializing in examination, diagnosis and treatment of diseases in infants and young children; infectious diseases in children.',6),(6,'Selina M.luger',0,'1970-02-16','0982731834','lugelsm@gmail.com','Oncology-Radiotherapy',13,'https://www.pennmedicine.org/-/media/mpd/providers/luger_selina.jpg','30 years of experience working in the field of oncology - radiation therapy, specializing in cancer treatment and malignant hematological diseases.',7),(7,'Tran Thanh Cang',1,'1968-09-11','0823748292','canhnt283@gmail.com','Professional Director and Head of Emergency Resuscitation Department',16,'https://vanhocsaigon.com/wp-content/uploads/2020/03/Tran-Thanh-Canh-vhsg-1a.jpg','Assoc. Dr. Dr. Tran Thanh Cang has nearly 40 years of experience in the field of Emergency Resuscitation and is a leading expert in medical resuscitation and poison control in Hai Phong\'s health sector. ',8),(8,'Ton That Tri Dung',1,'1970-09-08','0781239238','tttdung1@gmail.com','Head of Department of Medical Examination & Internal Medicine',5,'https://vinmec-prod.s3.amazonaws.com/images/01_07_2020_07_18_25_145197.jpeg','Doctor. Dr. Ton That Tri Dung has over 20 years of experience in neurology, specializing in neuroendocrine diseases - stroke; brain circuit intervention techniques; Examination, consultation and treatment of endocrine diseases and respiratory diseases.',9),(9,'Nguyen Dang Tuan',1,'1982-01-10','0832456114','tuandlm@gmail.com','Head of Subcommittee on Emergency Resuscitation of the Health System',6,'https://vinmec.com/vi/danh-sach/bac-si/nguyen-dang-tuan-51111/hoi-suc-cap-cuu','Dr. Nguyen Dang Tuan - Head of the Emergency Resuscitation Subcommittee of Vinmec Health System, Head of the Organ Transplant Resuscitation and Surgery Unit of the Intensive Care Unit of Vinmec Times City Hospital. Doctor of Medicine specializing in Anesthesiology and Resuscitation, former resident of HSCC specialized hospital, Hanoi Medical University, with extensive experience in the field of Emergency Resuscitation (12 years working in the Department of Resuscitation). active in Bach Mai Hospital; 03 years at the HSCC Department of Vinmec Times City Hospital). Official member of the World Association of Cardiopulmonary Machine (ELSO) (Extracorporeal Life Support Organization)',10),(10,'Le Trong Binh',1,'1969-02-25','0393728371','binhlt182@gmail.com','Head of Department of General Surgery',9,'https://vinmec-prod.s3.amazonaws.com/images/01_07_2020_06_49_06_620563.jpeg','Specialist I Le Trong Binh has more than 28 years of experience working in the field of Anesthesiology and Resuscitation, especially has strengths in: Anesthesiology: Cranial neurosurgery, thoracic surgery, cardiovascular surgery. , vascular interventions in adults and children. Anesthesia, analgesia for gastrointestinal, urological, endocrine, orthopedic surgery.',11),(11,'Doan Xuan Sinh',1,'1975-03-12','0365854235','dxs321@gmail.com','Head of Diagnostic Imaging',7,'https://www.vinmec.com/vi/danh-sach/bac-si/doan-xuan-sinh-51118/chan-doan-hinh-anh','Specialist Doan Thi Hong Hanh has more than 28 years of experience working in the field of Anesthesiology and Resuscitation, especially has strengths in: Anesthesiology: Cranial neurosurgery, thoracic surgery, cardiovascular surgery. , vascular interventions in adults and children. Anesthesia, analgesia for gastrointestinal, urological, endocrine, orthopedic surgery.',12),(12,'Doan Thi Hong Hanh',0,'1970-12-23','0238472345','honghanh12@gmail.com','Head of the department',16,'https://vast.gov.vn/documents/20182/9219222/100nhakhtieubieuchaua.jpg/9d2de8e4-9732-4bdd-a7d2-ede48c8e1236?t=1592898843420','Dr. Doan Thi Hong Hanh has more than 30 years of experience in the field of microbiology testing, especially in clinical microbiology, consulting on drug resistance of pathogenic bacteria and culturing, isolating, identifying, and microbiological antibiotics. pathogenic bacteria, microbiological immunoassays…',13),(13,'Alyssa A. Grissom',0,'1980-11-21','0355054625','anhtronsds2@gmail.com','Nursing Specialist',21,'https://www.vinmec.com/vi/danh-sach/bac-si/alyssa-a-grissom-51462/ung-buou','Master Alyssa A. Grissom has many years of experience in the field of clinical oncology nursing. MSc Alyssa A. Grissom has deep expertise in Adult Care Clinical nursing (caring for patients from infancy to old age). Caring for patients treated with chemotherapy and biologic therapy. MSc Alyssa A. Grissom received her Master\'s degree from Loyola University Chicago (Maywood, Illinois) in December 2015. She attended intensive training courses in Cancer Risk Assessment at City of Hope and received a great deal. many professional certifications and certifications. Master Alyssa A. Grissom has many articles such as Presentation on the topic Genetic Cancer Risk Assessment: Implications for Oncology Nursing, 18th Annual Oncology Nursing Workshop at Northwestern Memorial Hospital ( 2015). Practitioner in Oncology (2016). Presentation on the topic of chemotherapy and biological therapy Multi-Gene Panel Testing for Hereditary Cancer Risk. Journal of the Advanced for Non-Cancer Issues, Nursing Training in the Great Halls of Christ Medical Center (2017). Nursing Care Plans: Diagnosis interventions and outcomes 10th edition. Print press. M. Gulanick and G.L. Myers ed. AA Grissom - Edited oncology related chapters and content to reflect evidence-based nursing practice, new technologies, new treatment modalities, and oncology standards of care. MSc Alyssa A. Grissom is also a member of the Oncology Nursing Association. Currently, Master Alyssa A. Grissom is holding the position of Nursing Specialist working at the Department of Oncology - Hematology at Vinmec Times City International Hospital.',14),(14,'Vu Hong Thang',1,'1972-02-21','0346284664','thangmnhj21@gmail.com','Oncology specialist',19,'https://www.vinmec.com/vi/danh-sach/bac-si/vu-hong-thang-51448/ung-buou#!hinh-anh','Associate Professor, Doctor, Doctor Vu Hong Thang has 26 years of experience working in the field of Oncology - Radiation Therapy, especially as an oncologist, specializing in breast cancer - gynecological diseases. , lung cancer, liver cancer, gallbladder, pancreas,... He is a doctor with a noble heart with the practice motto \"Saving people is the greatest joy of the medical profession.\". In 2015, he was honored to receive the title of Associate Professor of Medicine, a golden milestone marking his devoted career in the medical industry. Moreover, in the same year 2015 he also became the typical face of the medical industry on the occasion of 60 years of medical profession. Especially in 2018, Associate Professor Thang was honored with the Medal for the development of the medical industry. In order to achieve these resounding achievements, he has always made efforts to study and improve his expertise through many intensive courses in Sweden, Australia, Malaysia, and Singapore. At the same time, he also showed his enthusiasm in the profession through more than 100 scientific research works, articles that have great impact and bring effective applications in practice.',15),(15,'Pham Ngoc Hoa',1,'1980-05-22','032812937','hoa123@gmail.com','Doctor Diagnostic Imaging',7,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCHB49DTKydTDhMIDTcOpNR0xZAkBwR3Rl_A&usqp=CAU','BSCK I Pham Ngoc Hoa has many years of experience in the field of Diagnostic Imaging, specializing in reading results (MRI, CT, X-ray); ultrasound (General, Cardiac, Vascular, Thyroid and Gynecological 3D, 4D); perform FNA of breast, thyroid and other tumors under ultrasound guidance.',16),(16,'Ha Thi Thu Hien',0,'1981-09-18','083742385','hienhtt@gmail.com','Doctor of Pathology',1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5oimKME3e8_ahq-viHRcrfaayrM3EUfORUg&usqp=CAU','Dr. Ha Thi Thu Hien has 19 years of experience in the field of pathology, pathological testing. Dr. Hien graduated with a Master\'s degree in Pathology from Hanoi Medical University in 2009. After that, he worked for a long time at the Department of Pathology - Viet Duc Hospital. Currently, Dr. Hien is a Pathologist - Laboratory Department - Vinmec Times City International Hospital.',17),(17,'Nguyen Viet Nhan',1,'1983-05-20','034879522','nhannth21@gmail.com','Genetic Consultant',3,'https://scontent.fhan3-3.fna.fbcdn.net/v/t1.6435-9/201178265_791166488437701_4752149825760262223_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=825194&_nc_ohc=M3WebZcQSWUAX9KoEvH&_nc_ht=scontent.fhan3-3.fna&oh=b4e4b98139e4215a0e2cb9be6fa14d2f&oe=617C9A8C','Assoc. Dr. Dr. Nguyen Viet Nhan has 45 years of experience in the field of Medical Genetics, specializing in genetic counseling for pregnant women with malformations and couples who have given birth to children with birth defects. genetic pathology, screening counseling - prenatal and neonatal diagnosis, premarital counseling. He was formerly Head of Physiology Department, Head of Medical Genetics Department, Deputy Director of Institute of Biomedicine at Hue University of Medicine and Pharmacy. Assoc. Dr. Dr. Nguyen Viet Nhan is currently a Genetic Consultant - Department of Fetal Medicine - Women\'s Health Center - Vinmec Times City International Hospital.',18),(18,'Do Thi Ngoc Lan',0,'1967-05-01','0198541365','lanngbam3@gmail.com','Doctor of Obstetrics and Gynecology ',5,'https://www.vinmec.com/vi/danh-sach/bac-si/do-thi-ngoc-lan-50852/san-phu','BSCK II Do Thi Ngoc Lan has over 30 years of experience in the field of Obstetrics and Gynecology, specializing in infertility surgery, gynecology, genital malformations, genital prolapse, laparoscopic treatment of ectopic pregnancy, fibroids uterus, ovarian cyst. She was the former Head of the Department of Gynecology and Surgery (Gynecology Department I) - National Hospital of Obstetrics and Gynecology, and was awarded the title of Excellent Doctor. Doctor II Do Thi Ngoc Lan is currently an Obstetrician and Gynecologist - Women\'s Health Center - Vinmec Times City International Hospital.',19),(19,'Pham Thi Thu Huong',0,'1988-05-25','0826327465','huongas12@gmail.com','Head of Internal Gastroenterology - Hepatobiliary Unit',17,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFGp4Zn855TGrbAgkrPl5kE4iRfLFOxN5FQA&usqp=CAU','MSc. Pham Thi Thu Huong has nearly 30 years of experience in the field of Gastroenterology - Hepatobiliary tract, specializing in the treatment of gastrointestinal - hepatobiliary diseases, intestinal lesions, endoscopic diagnosis of the stomach, colon colon, small intestine, early cancer screening, submucosal tumor diagnosis, biliary tract and pancreatic diseases.',20),(20,'Pham Thi Thu Huong',0,'1988-05-25','0826327465','huongas12@gmail.com','Head of Internal Gastroenterology - Hepatobiliary Unit',17,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFGp4Zn855TGrbAgkrPl5kE4iRfLFOxN5FQA&usqp=CAU','MSc. Pham Thi Thu Huong has nearly 30 years of experience in the field of Gastroenterology - Hepatobiliary tract, specializing in the treatment of gastrointestinal - hepatobiliary diseases, intestinal lesions, endoscopic diagnosis of the stomach, colon colon, small intestine, early cancer screening, submucosal tumor diagnosis, biliary tract and pancreatic diseases.',21);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` tinyint DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` longtext,
  `image` longtext,
  `account_id` int DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `patients_chk_1` CHECK (((not((`phone` like _utf8mb4'%[^0-9]%'))) and (char_length(rtrim(`phone`)) >= 8) and (char_length(rtrim(`phone`)) <= 10)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Nguyen Van Truong',1,'2000-06-11','0383567111','annv12@gmail.com','https://scontent.fhan3-4.fna.fbcdn.net/v/t1.6435-9/242537042_3083800925231735_4947795203312758325_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=b9115d&_nc_ohc=tgwFKVQX5AcAX9wbtfn&_nc_ht=scontent.fhan3-4.fna&oh=13a4efe2196c90138e67ceda0ea3e5c8&oe=617C5B16',22),(2,'Nguyen Thi Vanh',0,'2000-02-12','0312385923','vanh192@gmail.com','https://scontent.fhan3-4.fna.fbcdn.net/v/t39.30808-6/p320x320/242126353_896042261015934_5335071054684681854_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=825194&_nc_ohc=99kCeXWK3agAX-6KAo4&_nc_ht=scontent.fhan3-4.fna&oh=5ba62ca34b4e6e7177fbc1d38b2cafe9&oe=6159788B',23),(3,'Ngo Duy Toan',1,'1999-08-29','0192758234','toannd01@gmail.com','https://scontent.fhan3-3.fna.fbcdn.net/v/t39.30808-6/242210405_3062510727315633_6992775182172591197_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=825194&_nc_ohc=N0N5PbaLT0cAX-dXjnz&_nc_ht=scontent.fhan3-3.fna&oh=f335ea474ebefe18ac573cadb0b6bac6&oe=615B25F6',24),(4,'Le Thi Trung',1,'1997-11-26','0128393451','trunglt012@gmail.com','https://scontent.fhan3-3.fna.fbcdn.net/v/t1.6435-9/241564360_1473413899695590_8154715865166002527_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=b9115d&_nc_ohc=xuPkBc9alCcAX8NYVOX&tn=u1P-gP8ACMpYg8Yi&_nc_ht=scontent.fhan3-3.fna&oh=12c3da1f8814d40de3e14ab00eea091f&oe=617C7BFD',25),(5,'Dinh Thi Nhu',0,'1980-03-25','0213741821','nhunt11@gmail.com','https://scontent.fhan3-4.fna.fbcdn.net/v/t1.6435-9/241495569_1470535206650126_5921393796434499586_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=b9115d&_nc_ohc=6I3tnxAkgjQAX_t_L-c&_nc_ht=scontent.fhan3-4.fna&oh=070f6358c1a7ca4788a4f9e5c4e67ae2&oe=617AB809',26),(6,'Kieu Viet Lam',0,'1999-05-27','0283812362','kvl012@gmail.com','https://scontent.fhan3-4.fna.fbcdn.net/v/t39.30808-6/p280x280/241216016_402947867894769_8094768551584514777_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=825194&_nc_ohc=50tDVM_z_UMAX_oETlP&tn=u1P-gP8ACMpYg8Yi&_nc_ht=scontent.fhan3-4.fna&oh=494926ab0380400ab2935192041839d8&oe=615990C8',27),(7,'Nhu Van Kien',1,'1997-09-19','0913000275','kien0182@gmail.com','https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/240605640_343100667497894_9004104371251076102_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=b9115d&_nc_ohc=pWkntihGSWUAX_bIFSo&_nc_ht=scontent.fhan3-1.fna&oh=94393dc85a5d75c8b8def338029f607a&oe=615ADB56',28),(8,'Kieu Van Linh',1,'2005-03-22','0927851234','linhnt1285@gmail.com','https://scontent.fhan4-1.fna.fbcdn.net/v/t1.6435-9/237638143_1494715690897204_9026484317449560289_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=b9115d&_nc_ohc=RF12WUO5AdcAX-RYOpL&_nc_ht=scontent.fhan4-1.fna&oh=4c41f25f3673022530c3268c9dd2f6bb&oe=617BD574',29),(9,'Nho Mai Anh',0,'2000-11-13','0383561234','anhmtnhs12305@gmail.com','https://scontent.fhan3-4.fna.fbcdn.net/v/t1.6435-9/p480x480/240216883_3031580053785439_8179834460106778074_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=b9115d&_nc_ohc=LlIyaj-AS0QAX-t6k3O&_nc_ht=scontent.fhan3-4.fna&oh=04a9707ec9bd4dca4731d6abbd367640&oe=617BCBA3',30),(10,'Nguyen Truong An',1,'1997-09-19','0973567588','annt982@gmail.com','https://scontent.fhan3-3.fna.fbcdn.net/v/t39.30808-6/239243924_1681565942034178_3354816572299253193_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=b9115d&_nc_ohc=saJjOdP01q4AX93onlD&_nc_ht=scontent.fhan3-3.fna&oh=5a160edc624c2c22e2474fbb8e46e870&oe=615A3E9B',31);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int DEFAULT NULL,
  `slot_id` int DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`reservation_id`),
  KEY `patient_id` (`patient_id`),
  KEY `service_id` (`service_id`),
  KEY `FK_Reservations_Timetable` (`slot_id`),
  CONSTRAINT `FK_Reservations_Timetable` FOREIGN KEY (`slot_id`) REFERENCES `timetable` (`slot_id`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_feedbacks`
--

DROP TABLE IF EXISTS `service_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_feedbacks` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `rate` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `patient_id` (`patient_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `service_feedbacks_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `service_feedbacks_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_feedbacks`
--

LOCK TABLES `service_feedbacks` WRITE;
/*!40000 ALTER TABLE `service_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `type_id` int DEFAULT NULL,
  `image` longtext,
  `description` longtext,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`service_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `specialities` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Maternity packages',8,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Pregnancy is divided into trimesters (each trimester is 3 months). Understanding the stages of pregnancy will help mothers easily monitor the status of mother and baby as well as make appropriate adjustments in nutrition and activities. In particular, in each trimester, scientists also give the necessary orientations that mothers need to remember to best check the pregnancy process. Participating in the \"Comprehensive pregnancy roadmap with Vinmec experts\" will help mothers gain the knowledge, experience and necessary notes at each stage of pregnancy.',350000),(2,'Umbilical ord blood',10,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','MSC stem cells from umbilical cord are cells that can divide and differentiate into many different types of cells to form connective tissues such as bone, cartilage, fat, muscle or nerve cells, muscle cells. With this \"miracle\" ability, stem cells can replace damaged cells to maintain and ensure the normal development of the body. Storing umbilical cord stem cells is considered a life-time bioinsurance for children and their loved ones because it can be used to support and treat more than 100 different diseases. Among them are many dangerous diseases such as cancer, cardiovascular disease, diabetes, autism, brain/spinal cord injury, autoimmune diseases, osteoarthritis, cirrhosis, lung disease, wound healing, aesthetic medicine. beauty, anti-inflammatory, restore tissue/organ damage... Realizing the importance and breakthrough in treatment methods and diverse applications of umbilical cord stem cell storage, Vinmec International General Hospital has established Vinmec High-Tech Center - Vinmec Cellular Bank. The first umbilical cord stem cell in Vietnam operates under a closed, professional and modern process.',200000),(3,'Cancer Screening',15,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Being diagnosed with cancer but don\'t know if it should be treated or not. You are afraid that treatment will make the disease progress faster. You are suffering from pain, fatigue and torment. You suffer from side effects from chemotherapy and radiation day and night. There are too many treatment and support methods online but you don\'t know which method to follow',2000000),(4,'Sewing wound at home',21,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Currently, the demand for home wound care services such as changing wound dressings, cutting sutures at home has become more popular. However, wound care sometimes becomes confusing for family members and patients because they do not have the expertise and experience to care for them as well as not having enough medical tools to ensure safety when performing them. wound care at home. Understanding the urgent needs of patients, Viet Australia Family Clinic has provided home wound care services, home dressing changes, wound trimming - home suture removal, in-room suture removal. Quick, safe and convenient examination, helping patients have more time to rest, not having to travel to medical facilities to treat all kinds of wounds with experienced nurses and standard equipment.',150000),(5,'Take blood for testing, return results at home or work',11,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Along with the changing living conditions, the pathology develops in many complicated directions, difficult to definitively treat and gradually erodes human health. Periodic health check-ups help detect disease risks to take appropriate preventive measures as well as diagnose diseases quickly to help patients have accurate and definitive treatment. However, testing and medical examination at the hospital often takes a lot of time and has to fast for breakfast, wait in line, etc., making patients hesitate and tired. Understanding the needs and desires of customers for convenient and quality medical services, Viet Uc Family Clinic provides home blood sampling and results delivery services. No need to travel, wait - Running results are completely accurate - Get test results within 2-4 hours - Consult a doctor as soon as results are available - Get hard copy results at home.',150000),(6,'Changing bandages, cutting threads at home or work',21,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Changing dressings and cutting wounds are considered basic techniques often performed in hospitals. But because the patient\'s psychology wants to be treated and cared for at home to feel comfortable and convenient, and the caregiver does not have to travel, now changing the dressing at home is being interested.',150000),(7,'Caring for someone who has a stroke',13,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Taking care of a patient after a stroke is quite difficult for the patient\'s family, the Stroke Care Service of Viet Australia Family Clinic helps you reduce the burden of taking care of your family member. Most post-stroke patients are unable to take care of themselves and have to rely on the help of others. A big issue is how to care for patients in the post-stroke stage at home, especially those who are still in a coma. A stroke or cerebrovascular accident occurs when the blood supply to part of the brain is suddenly stopped or reduced, and brain cells are deprived of oxygen and nutrients. Within a few minutes, brain cells begin to die, so the respective body parts controlled by it will not work, manifested by paralysis, numbness and hemiparesis, difficulty speaking or coma.... A stroke, if it occurs at a mild level, can completely restore function or leave partial sequelae and disability more or less. If a stroke is severe, it can lead to total hemiplegia, coma, or death.',1500000),(8,'Healthcare for Diabetics',7,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Diabetes, also known as diabetes, is one of the leading chronic diseases causing death in many countries around the world. In Vietnam, an estimated 5 million people are suffering from diabetes and this number will continue to increase if people do not know how to take care of and protect their health. Therefore, the current demand for diabetes care in big cities is increasing.',1000000),(9,'Health care for people with high blood pressure',4,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Blood pressure is the pressure of blood in the artery walls. It is essential for blood circulation in your body. High blood pressure occurs when blood pressure remains high for an extended period of time. This condition makes the heart work harder. As a result, high blood pressure can cause heart attack, stroke, kidney failure and even death. The care of people with high blood pressure is now also much more concerned. The best way to prevent, support and care for people with high blood pressure is to have regular health checkups. Based on many years of research and experience in the field of family health care, Viet Australia Family Clinic brings you the High Blood Pressure Care service package as a meaningful gift that you can spend. for yourself and your loved ones.',1500000),(10,'Emergency',21,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Understanding the importance of first aid in life and health-threatening situations, Hong Ngoc General Hospital has invested in a system of emergency vehicles and modern medical equipment available 24 hours a day. The emergency staff is well-trained in expertise and accurate first aid procedures, ensuring fast and high safety criteria in on-site treatment as well as transporting hospitalized patients.',500000),(11,'Psychedelic Counseling',13,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Spirituality is an asset as important as education and the material values ??you possess. You are having problems with mental stress, or have addictive behaviors (Internet, games, ..) Your spirit is down, you feel fatigue, stress, anxiety, loss of appetite and severe insomnia. Prolonged psychological tension, you don\'t know who to talk to. You need advice on career development or dealing with conflicts, conflicts, crises in relationships or at work. The psychologists of Mai Huong Day Psychiatric Hospital are happy to help you. In some necessary cases, multiple tests can be conducted to compare and contrast, in order to evaluate more accurately with common clinical experience.',1200000),(12,'Eye examination at central hospital',16,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Central Eye Hospital is located at Ba Trieu Street, Hai Ba Trung District, Hanoi. The hospital performs the functions and tasks of medical examination and treatment, disease prevention and rehabilitation for patients nationwide at the highest level. With a history of 60 years of establishment and development, the hospital has become a trusted place for medical examination and treatment and specialized eye treatment of people nationwide.',1000000),(13,'Weight loss and muscle gain advice',14,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','An unbalanced physique with little muscle, a lot of excess fat (usually in the abdomen, thighs, biceps ...) is a common obsession of many people today. Not only affects the psychology and aesthetics, this condition also entails many health risks such as cardiovascular disease, bone and joint disease, etc. The subjects at high risk of having a lot of excess fat and little muscle are people who often work in one place, are sedentary, postpartum women, people after the age of 35, 40, overweight people ... One of the effective solutions for This problem is to apply a regimen to help increase the amount of beneficial muscle for the body and destroy the harmful excess fat, especially to ensure the goal of maintaining a stable and long-term weight and muscle mass. Nutrition examination and counseling service to increase muscle and reduce excess fat at Nutrihome Nutrition Clinic System - Nutritional Medicine is for all those who want to own a toned body, without excess fat, slim abs and abs. ideal physique. In particular, Nutrihome offers a comprehensive treatment regimen with the goal of ensuring \"beautiful outside - healthy inside\" when combining science between nutrition and methodical and individualized exercises for each need. .',2000000),(14,'Stomachache Cure',9,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Direct examination with a team of good doctors, many years of experience, having worked at many big hospitals such as: Doctor, Doctor of Internal Medicine and Gastroenterology Pham Thi Binh - Former Head of the Department of Physical Education and Training of Bach Mai Hospital; Specialist Doctor II. Excellent doctor Nguyen Thi Hang – Former Head of Gastroenterology Department – ??E Hospital. Modern, advanced equipment, constantly updating the latest technology to help accurately diagnose diseases. Attentive and dedicated service. Reasonable cost, health insurance payment. Book an appointment quickly, limit waiting time.',300000),(15,'Facial Skin Care',3,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','The skin is the largest organ of the body, it plays an important role as an armor that protects all internal organs. Especially the face is the brightest \"facade\" position of both men and women, so it deserves to be cherished and cared for every day. Dermatologists advise that: \"In addition to skin care at home, women and men should go to a facial spa once a month to maintain healthy, disease-free skin\".',3000000),(16,'Stem Cell Transplant',2,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','We provide the best stem cell storage and transportation services because we understand the importance of stem cells and their future therapeutic applications. Right at the time of birth, the umbilical cord and cord blood will be collected to be used to separate stem cells.',5000000),(17,'Tests to evaluate kidney function',7,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Renal failure is a condition in which kidney function declines, which can come on suddenly, called acute renal failure, or progress slowly, called chronic renal failure. In acute renal failure, renal function is reversible. Chronic kidney failure is a gradual decline in kidney function and eventually a complete loss of function. At this time, it is necessary to have supportive measures for kidney function in order for the body to survive.',1500000),(18,'Covid PCR Test',12,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','The COVID-19 pandemic has upended the lives of children and their families across the globe. UNICEF is working with experts to promote facts over fear, bringing reliable guidance to parents, caregivers and educators, and partnering with front-line responders to ensure they have the information and resources they need to keep children healthy and learning.',100000),(19,'Dental Fillings',5,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Dental fillings at Lien Thanh Dental Clinic. Dentists at Lien Thanh Dental will advise and help you in choosing the type of material to carry out dental fillings depending on specific factors such as: requirements for prevention of tooth decay, aesthetic requirements of patients. patient, demanding on the bearing capacity of the solder… In addition, at Lien Thanh Dental Clinic, the most advanced dental filling material is applied Fuji PG (new generation solder) and a more precise beater, so the life of the weld is very high, can be from 5 to 10 years. year. Moreover, when filling teeth, the solder is machined and the filler is very small, increasing the bonding ability to help the weld be stable and withstand strong forces.',200000),(20,'Laser Acne Treatment',6,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Effective laser acne treatment at Spa Zema is a proven solution in the number of customers who have been treated for acne at the root, and significantly reduced acne at the first experience. Acne is always an \"obsessive\" problem for women because of its ugliness that affects the skin of the face. Currently, there are many methods or technologies at acne spas that bring different effects, come to Zema to experience this fast, new acne treatment right away! Click on the image below to receive special offers!',3000000),(21,'Nearsightedness Surgery',16,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','ReLEx SMILE is the most advanced method of treating eye diseases such as nearsightedness today. Many people have chosen ReLEx SMILE eye surgery to say goodbye to their glasses. However, how much does ReLex SMILE eye surgery cost is still a question that many people are interested in.',12000000),(22,'Package of general health check',2,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','The general health examination package of Hanoi General Hospital is designed to suit many subjects, for both men and women with high science and practicality to help timely intervene and treat diseases (if any). Customers will be examined for basic categories such as digestive system, respiratory system, nervous system, cardiovascular system ... and more specialized with blood tests, urine or diagnostic imaging to help achieve the highest efficiency. . At Hanoi General Hospital, there are 3 general health checkup packages for customers to choose from depending on the needs and purposes of each individual, including: Basic Package, Standard Package, Advanced Package. Doctors and specialists of Hanoi General Hospital will advise customers to choose the most suitable package for each customer to achieve maximum effectiveness with minimum cost.',500000),(23,'Family doctor checkup package',5,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Procedure for visiting a family doctor: Schedule an appointment depending on the case of an emergency or choose a time that is suitable for the customer Based on the patient\'s symptoms, the doctor will conduct an examination and diagnosis of the disease. If it is possible to treat at home, the doctor will issue a prescription and guide you on how to treat, re-examine… If the disease is severe, the doctor will guide the patient to the hospital and have the appropriate treatment Family doctor service, we divide into packages to suit the needs of each patient\'s family Unscheduled home examination on request Weekly and monthly check-ups',3000000),(24,'PRE-Marriage Examination Package',8,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','The pre-marital examination package of Hanoi General Hospital is specially designed for newly-married couples, with a full list of the most necessary examinations for customers to understand their own health before entering life. long marriage.',2000000),(25,'Plastic surgery package',11,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','System of one-way sterile operating room, postoperative room is invested and standardized with 5 stars according to international standards. Gathering a good advisory board, European experts with over 25 years of experience, a team of highly skilled plastic surgeons who have trained abroad. With the outstanding strength of technology, a team of experts and leading doctors. Aesthetics of Hanoi General Hospital is highly appreciated by exclusive beauty technologies such as: No Touch 3S Breast Augmentation, Nano Form 8.0 . nose lift Liposuction VASE LIPO POWER Natural Eyelids - Ultra Natural Eyelids Diamond Collagen facelift 4.0 Young Lift Thread Tension Baby fat transplant….',5000000),(26,'Package of urinary stone examination',11,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Many complications of urinary diseases greatly affect the body: male infections, kidney failure, blood infections, increased risk of sexually transmitted diseases, decreased psychological well-being. In particular, the rate of people suffering from infertility - infertility due to urinary tract diseases is now higher than other diseases. Kidney stones can also cause recurrent kidney infections, which is a risk factor for kidney failure. Elderly men are at risk of prostate enlargement causing urinary outlet obstruction. Monitor the progression of kidney disease in a timely manner; have a reasonable diet; do not drink beer, wine; no smoking; eat less meat, reduce fat and increase vegetables; avoid too hard labor; prevention of hypertension, if you have high blood pressure, you must treat and control your blood pressure; treatment of urolithiasis and salt restriction; urinary tract infection prevention and timely treatment of urinary tract infections.',30000000),(27,'High-tech intervention & imaging package',15,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','The diagnostic imaging at Hanoi General Hospital is invested with the world\'s leading modern machinery and equipment, synchronously imported, directly from famous brands of Germany, Japan, and the United States, helping to bring the best results. diagnostic results with high accuracy and effective procedures such as: 4D ultrasound machine, gastrointestinal endoscope, digital X-ray machine... The advanced NBI Gastroscopy / Colonoscopy system, effectively supports the observation and assessment of damage in the gastrointestinal tract, detects all diseases in the digestive system, detects H. remove polyps and gastrointestinal cancer germs even though there are no symptoms.',10000000),(28,'Thyroid and breast screening package',12,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Thyroid cancer screening is a basic to advanced test that looks for the presence of cancer cells when there are no symptoms in the body. In other words, cancer screening will help us detect cancer early so that it can be treated easily, minimizing unwanted complications.',2500000),(29,'Amidan cutting/drawing with no pain',6,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Tonsillitis and VA are two of the Lymphoid organizations in the Waldeyer ring that are responsible for identifying bacteria, creating antibodies to destroy when they re-enter the body. Tonsillitis and VA can be treated medically during acute episodes of inflammation. However, in some cases of tonsillitis and VA that are overgrown or have a long-lasting, recurrent infection that seriously affects health, it is necessary to remove it for definitive treatment.',7300000),(30,'Endoscopic sinuses',3,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Sinusitis is a disease of the respiratory system that can affect people of all ages. If the patient does not receive timely treatment, sinusitis can lead to a number of dangerous complications, significantly affecting the health of the sufferer.',1500000),(31,'Treatment of cervicitis with RFA',7,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Cervical ectropion forms when glandular cells overgrow. Invading the outside of the cervix, allowing bacteria and fungi to enter and cause disease. Currently, there are many different treatment methods, including the treatment of thyroiditis with radiofrequency waves.',3400000),(32,'PROCEDURES OVERVIEW VABB Vacuum Breast Suction',10,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','DOESN\'T BE POSSIBLE WITH SMALL BEAUTIFUL ANNOUNCEMENT The disease is common in women aged 30',1300000),(33,'HIGH FREQUENCY TUTORIAUS (RFA)',14,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Patients will be completed HSBA by interventional doctors (examination, subclinical results, indications for intervention, commitment to intervention, ...) and an explanation of the risks and benefits of the method. at the same time for signing a commitment to implement the intervention. - If necessary, the patient will also be anesthetized before the intervention.',2500000),(34,'RARE TREATMENT/ ASSISTANCE OF REPRODUCTIVITY (IVF/IUI)',19,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Oral fertility drugs are usually applied to cases of women undergoing assisted reproduction by intrauterine insemination (IUI) and in vitro fertilization (IVF). So when is the best time to take fertility drugs and how to use them effectively? The information below will help women better understand this issue and have the answer to the question of taking fertility drugs at the most appropriate time, thereby knowing how to use them effectively.',7300000),(35,'Advanced periodic health checkup package',11,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Understanding the importance of general health check-up in the care and protection of public health, the team of doctors at Lac Viet Friendship Hospital have diligently researched, built and launched the package. General periodic health check for all subjects, suitable for each different age. The periodic health check-up package is designed with a full list of examinations according to a scientific process from clinical examination, to in-depth tests, imaging, functional exploration... to ensure identification and diagnosis. diagnose the disease accurately and efficiently. ',200000),(36,'Examination Package – Comprehensive 2',13,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','The examination package includes 52 examination categories, suitable for both men and women of all ages, which will help detect abnormalities in the body early.',1000000),(37,'Package – Comprehensive 4',13,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','With the desire to help people raise their awareness in health examination and care for themselves and their families, Thu Cuc International General Hospital builds a comprehensive health check-up package and advanced comprehensive cancer screening. 4 with 53 lists of essential examinations suitable for both men and women of all ages, will help detect abnormalities in the body early to help people have a better health. This package is currently applied at Facility 2 of Thu Cuc health system.',4000000),(38,'Packages – Female – Pre-menopause',14,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','Before menopause occurs, women will have to go through perimenopause. This stage occurs when a woman turns 40 and can last from 2 to 7 years. According to statistics, one in five women suffers from an intolerable psychological and physiological disturbance, the remaining 80% is in a state of little or no change. And depending on the body of each person, that change is fast or slow, sooner or later.',2800000),(39,'Package of examination – Health check for issuance of green card',15,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','According to medical experts, “annual medical examination will help us detect and prevent diseases early. Bringing practical benefits in treatment, minimizing the damage and complications caused by some diseases. In particular, for people working in the food industry, periodic health checks are not only to detect and prevent diseases for themselves, but also to help prevent infection to others.',2800000),(40,'Package of examination – Examination and detection of gynecological diseases',13,'https://vinmec-prod.s3.amazonaws.com/images/20210722_110954_471884_219436895_49203283179.max-800x800.jpg','4 reasons you should see a gynecologist: Early detection of inflammatory diseases and cancer of the appendages makes treatment easy and inexpensive. Prevention and early detection of urinary tract infections, uterine fibroids, cervical cancer. For advice on reproductive health, how to prevent pregnancy safely and effectively, how to keep the room clean. Detect endocrine and psychological disorders and find treatment methods. The following is a detailed table of the price of gynecological examination packages at Thu Cuc International General Hospital.',2300000);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialities`
--

DROP TABLE IF EXISTS `specialities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialities` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialities`
--

LOCK TABLES `specialities` WRITE;
/*!40000 ALTER TABLE `specialities` DISABLE KEYS */;
INSERT INTO `specialities` VALUES (1,'Anesthetics & Recovery '),(2,'Autism & Cerebral Palsy '),(3,'Beauty '),(4,'Cardiology '),(5,'Dentistry'),(6,'Dermatology'),(7,'Endocrinology'),(8,'Fertility'),(9,'Gastroenterology'),(10,'Gynecology & Obstetrics'),(11,'Hematology & Blood Transfusion'),(12,'Infectious Disease'),(13,'Neurology'),(14,'Nutrition'),(15,'Oncology'),(16,'Ophthalmology'),(17,'Orthopedic'),(18,'Pediatrics'),(19,'Pharmacy'),(20,'Physical Therapy & Rehabilitation '),(21,'Resuscitation & Emergency');
/*!40000 ALTER TABLE `specialities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `slot_id` int NOT NULL AUTO_INCREMENT,
  `time` longtext,
  PRIMARY KEY (`slot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
INSERT INTO `timetable` VALUES (1,'7h - 8h'),(2,'8h - 9h'),(3,'9h - 10h'),(4,'10h -11h'),(5,'11h - 12h'),(6,'14h - 15h'),(7,'15h - 16h'),(8,'16h -17h');
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-19 16:24:55