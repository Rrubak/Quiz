-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2016 at 02:32 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(10) NOT NULL,
  `participant` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `marks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `participant`, `institution`, `email`, `marks`) VALUES
(1, 'dsadsaf', 'dfdsf', 'dfsdfgs@dfgdf', '1'),
(2, 'daserfs', 'rtrtyrg', 'fsd@fghg', '6'),
(3, 'Sudhakar', 'KIOT', 'ausdhakar@live.in', '17'),
(4, 'Aerun', 'sddfkjbsdfkj', 'adkjbh@gmail.com', ''),
(5, 'saol0tyrfik90', 'ds', 'fgds@NMJIJI.NUJHNUH', '2'),
(6, 'rubak', 'sscet', 'rubak@gmail.com', '5');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(10) NOT NULL,
  `question` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `ans` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `a`, `b`, `c`, `d`, `ans`) VALUES
(1, 'Intel was founded in ?', 'july 1968', 'july 1969', 'july 1959', 'july 1965', 'a'),
(2, 'Microsoft was founded in?', '1975', '1978', '1969', '1970', 'a'),
(3, 'when intel introduced first commercial microprocessor?', '1968', '1965', '1970', '1971', 'd'),
(4, 'HTML was developed by ?', 'dennis ritchie', 'Timber ner''s lee', 'james gosling', ' Ada lovelace', 'b'),
(5, 'Algorithm was first introduced by ?', 'Howard Aiken', 'Jacquard loom', 'Herman Hollerith', 'Ada lovelace', 'd'),
(6, 'Thrashing is', 'natural consequence of virtual memory systems', 'always be avoided by swapping', 'always occurs on large computers', 'caused by poor paging algorithms', 'd'),
(7, 'Interprocess communication is', 'required for all processes', 'usually done via disk drives', 'never necessary', 'process to synchronize activity', 'd'),
(8, 'A page fault', 'is an error is a specific page', 'occurs when a program accesses a page of memory', 'is an access to a page not currently in memory', 'is a reference to a page belonging to another program', 'c'),
(9, 'Producer consumer problem can be solved using', 'semaphores', 'event counters', 'monitors', 'all of the above', 'd'),
(10, 'Which is a permanent database in the general model of compiler?', 'Literal Table', 'Identifier Table', 'Terminal Table', 'Source code', 'c'),
(11, 'Operating system', 'links a program with the subroutines it references', 'provides a layered, user-friendly interface', 'enables the programmer to draw a flowchart', 'all of the above', 'b'),
(12, 'What problem is solved by Dijkstra''s banker''s algorithm?', 'mutual exclusion', 'deadlock recovery', 'deadlock avoidance', 'cache coherence', 'c'),
(13, 'IBM released its first PC in 1981. Can you name the operating system which was most popular at that time?', 'MS-DOS', 'PC-DOS', 'OS/360', 'CP/M', 'd'),
(14, 'A translator is best described as', 'an application software', 'a system software', 'a hardware component', 'all of the above', 'b'),
(15, 'Data encryption', 'is mostly used by public networks', 'is mostly used by financial networks', 'cannot be used by private installations', 'is not necessary, since data cannot be intercepted', 'b'),
(16, 'which program is responsible for verifying devices at startup?', 'clusters', 'semaphores', 'bootstrap program', 'terminal', 'c'),
(17, 'A hard disk is divided into tracks which are further subdivided into:', 'clusters', 'sectors', 'vectors', 'heads', 'b'),
(18, 'Which standard govern parallel communications?', 'RS232', 'RS232a', 'CAT 5', 'IEEE 1284', 'd'),
(19, 'Who co-founded Hotmail in 1996 and then sold the company to Microsoft?', 'Shawn Fanning', 'Ada Byron Lovelace', 'Sabeer Bhatia', 'Ray Tomlinson', 'c'),
(20, 'In what year was the "@" chosen for its use in e-mail addresses?', '1976', '1972', '1980', '1984', 'b'),
(21, 'What was the first ARPANET message?', 'io', 'hello world', 'mary had a little lamb', 'cyberspace, the final frontier', 'a'),
(22, 'Who built the world''s first binary digit computer: Z1...?', 'Konrad Zuse', 'Ken Thompson', 'Alan Turing', 'George Boole', 'a'),
(23, 'google was founded in?', '1994', '1997', '1998', '1996', 'c'),
(24, 'What is an SQL virtual table that is constructed from other tables?', 'relation', 'view', 'Query results', 'Just another table', 'b'),
(25, 'Which of the following is NOT a type of SQL constraint?', 'PRIMARY KEY', 'FOREIGN KEY', 'ALTERNATE KEY', 'UNIQUE', 'c'),
(26, 'A view is which of the following?', ' A virtual table that cannot be accessed via SQL commands', 'A virtual table that can be accessed via SQL commands', 'A base table that can be accessed via SQL commands', 'A base table that cannot be accessed via SQL commands', 'b'),
(27, 'For what purposes are views used?', 'To hide columns only', 'To hide complicated SQL statements only', 'All of the above are uses for SQL views.', 'To hide rows only', 'c'),
(28, 'The wildcard in a WHERE clause is useful when?', 'An exact match is necessary in a SELECT statement.', 'An exact match is not possible in a SELECT statement.', 'An exact match is necessary in a CREATE statement.', 'An exact match is not possible in a CREATE statement.', 'b'),
(29, 'To update an SQL view, the DBMS must be able to associate the column(s) to be updated with:', 'a particular column in a particular row.', 'a particular column in a particular underlying table.', 'a particular column in a particular underlying table.', 'None of the above is correct.', 'c'),
(30, 'ON UPDATE CASCADE ensures which of the following?', ' Data Integrity', 'Normalization', 'Materialized Views', 'All of the above.', 'a'),
(31, 'The SQL statement to create a view is:', 'MAKE VIEW.', 'CREATE VIEW.', 'SELECT VIEW.', 'INSERT VIEW.', 'b'),
(32, 'A ________ is a stored program that is attached to a table or a view.', 'trigger', 'None of the above is correct.', 'embedded SELECT statement', 'pseudofile', 'a'),
(33, 'SQL views can be used to hide:', 'complicated SQL syntax only.', 'both of the above can be hidden by an SQL view.', 'columns and rows only.', 'None of the above is correct.', 'b'),
(34, 'You can add a row using SQL in a database with which of the following?', 'INSERT', 'CREATE', ' ADD', 'MAKE', 'a'),
(35, 'The command to remove rows from a table ‘CUSTOMER’ is:', 'UPDATE FROM CUSTOMER ...', 'DROP FROM CUSTOMER ...', 'DELETE FROM CUSTOMER WHERE ...', 'REMOVE FROM CUSTOMER ...', 'c'),
(36, 'Which of the following is the original purpose of SQL?', 'To define the data structures', 'To specify the syntax and semantics of SQL data definition language', 'To specify the syntax and semantics of SQL manipulation language', 'All of the above.', 'd'),
(37, 'SQL data definition commands make up a(n) ________ .', 'HTML', 'DDL', 'XML', 'DML', 'b'),
(38, 'The DROP TABLE statement:', 'works whether or not referential integrity constraints would be violated.', 'deletes the table structure only.', 'is not an SQL statement.', 'deletes the table structure along with the table data.', 'd'),
(39, 'A ________ is a program that performs some common action on database data and that is stored in the database.', 'pseudofile', 'stored procedure', 'trigger', 'None of the above is correct.', 'b'),
(40, 'Which of the following correctly describes overloading of functions?', 'Virtual polymorphism', 'Ad-hoc polymorphism', 'Transient polymorphism', 'Pseudo polymorphism', 'b'),
(41, 'Which of the following approach is adapted by C++?', 'Bottom-up', 'Top-down', 'Right-left', 'Left-right', 'a'),
(42, 'Why reference is not same as a pointer?', 'A reference once established cannot be changed.', 'Reference doesn''t need an explicit dereferencing mechanism.', 'A reference can never be null.', 'All of the above.', 'd'),
(43, 'Which of the following is an abstract data type', 'double', 'string', 'int', 'Class', 'd'),
(44, 'Which of the following concepts provides facility of using object of one class inside another class?', 'Composition', 'Encapsulation', 'Abstraction', 'Inheritance', 'a'),
(45, 'Which of the following concepts of OOPS means exposing only necessary information to client?', 'Data binding', 'Data hiding', 'Abstraction', 'Encapsulation', 'b'),
(46, 'How many instances of an abstract class can be created?', 'one', 'two', 'instance cannot be created', 'any no.of instances can be created', 'c'),
(47, 'Which of the following cannot be friend?', 'Function', 'Class', 'Object', 'Operator function', 'c'),
(48, 'Which of the following type of class allows only one object of it to be created?', 'Abstract class', 'Virtual class', 'Singleton class', 'Friend class', 'c'),
(49, 'cout is a/an __________ .', 'function', 'operator', 'object', 'macro', 'c'),
(50, 'Which of the following is correct about function overloading?', 'The number of argument is same.', 'The types of arguments are different.', 'The order of argument is different.', 'Both A and B.', 'd'),
(51, 'What is a Firewall in Computer Network?', 'The physical boundary of Network', 'An operating System of Computer Network', 'A web browsing Software', 'A system designed to prevent unauthorized access', 'd'),
(52, 'What is the meaning of Bandwidth in Network?', 'Connected Computers in the Network', 'Transmission capacity of a communication channels', 'None of Above', 'Class of IP used in Network', 'b'),
(53, 'Each IP packet must contain', 'Source and Destination address', 'Only Destination address', 'Source or Destination address1', 'Only Source address', 'a'),
(54, 'How many bits are there in the Ethernet address?', '64 bits', '48 bits', '16 bits', '32 bits', 'b'),
(55, 'How many layers does OSI Reference Model has?', '4', '7', '5', '6', 'b'),
(56, '_______ provides a connection-oriented reliable service for sending messages', 'IP', 'TCP', 'UDP', 'All of the above', 'b'),
(57, 'DNS is the abbreviation of', 'Domain Name System', 'Dynamic Network System', 'Dynamic Name System', 'Domain Network Service', 'a'),
(58, 'Which of the following is correct regarding Class B Address of IP address', 'Network bit – 12, Host bit – 14', 'Network bit – 14, Host bit – 16', 'Network bit – 16, Host bit – 14', 'Network bit – 18, Host bit – 16', 'b'),
(59, 'What is the use of Bridge in Network?', 'to connect LANs', 'to separate LANs', 'All of the above', 'to control Network Speed', 'a'),
(60, 'You want subclasses in any package to have access to members of a superclass. Which is the most restrictive access that accomplishes this objective?', 'protected', 'public', 'private', 'default', 'a'),
(61, 'Which is a valid declarations of a String?', 'String s4 = (String) ''\\ufeed'';', 'String s2 = ''null'';', 'String s3 = (String) ''abc'';', 'String s1 = null;', 'd'),
(62, 'Which one is a valid declaration of a boolean?', 'boolean b1 = 0;', 'boolean b2 = ''false'';', 'boolean b3 = false;', 'boolean b4 = Boolean.false()', 'c'),
(63, 'What is the most restrictive access modifier that will allow members of one class to have access to members of another class in the same package?', 'public', 'default access', 'protected', 'abstract', 'b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
