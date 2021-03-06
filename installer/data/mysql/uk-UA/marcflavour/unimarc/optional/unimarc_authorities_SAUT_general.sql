DELETE FROM auth_types WHERE authtypecode='SAUT';
-- INSERT INTO auth_types (auth_tag_to_report, authtypecode, authtypetext, summary) VALUES (200, 'SAUT', 'Sujet (auteur)', '[200a][, 200b][(200g)][ 200d][ ; 200c][ (200f)][ -- 200x][ -- 200z][ -- 200y]');
INSERT INTO auth_types (auth_tag_to_report, authtypecode, authtypetext, summary) VALUES (200, 'SAUT', 'Предметна рубрика (ім’я особи)', '[200a][, 200b][(200g)][ 200d][ ; 200c][ (200f)][ -- 200x][ -- 200z][ -- 200y]');
DELETE FROM auth_tag_structure WHERE authtypecode='SAUT';
DELETE FROM auth_subfield_structure WHERE authtypecode='SAUT';


INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '001', '', '', 'Ідентифікатор запису', 'Ідентифікатор запису', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '001', '@', 0, 0, 'tag 001', 'tag 001',                   -1, 0, NULL, '', NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '005', '', '', 'Ідентифікатор версії', 'Ідентифікатор версії', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '005', '@', 0, 0, 'tag 005', 'tag 005',                   -1, 0, NULL, '', NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '015', '', '', 'Міжнародний стандартний номер авторитетних / нормативних даних (ISADN)', 'Міжнародний стандартний номер авторитетних / нормативних даних (ISADN)', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '015', '@', 0, 0, 'tag 015', 'tag 015',                   -1, 0, NULL, '', NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '035', '', '', 'Інші системні контрольні номери', 'Інші системні контрольні номери', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '035', 'a', 0, 0, 'Системний контрольний номер', 'Системний контрольний номер', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '035', 'z', 0, 1, 'Скасований або недійсний контрольний номер', 'Скасований або недійсний контрольний номер', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '100', 1, '', 'Дані загальної обробки', 'Дані загальної обробки', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '100', 'a', 0, 0, 'Дані загальної обробки', 'Дані загальної обробки', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '101', '', '', 'Мова об’єкту', 'Мова об’єкту', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '101', 'a', 1, 0, 'Мова, використовувана об’єктом', 'Мова, використовувана об’єктом', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '102', 1, '', 'Національність об’єкту', 'Національність об’єкту', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '102', 'a', 0, 1, 'Країна національності', 'Країна національності', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '102', 'b', 0, 1, 'Місцеположення', 'Місцеположення',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '106', '', '', 'Поле кодованих даних для персонального/корпоративного/родового імені / торгової марки використано як тематичний заголовок', 'Поле кодованих даних для персонального/корпоративного/родового імені / торгової марки використано як тематичний заголовок', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '106', 'a', 1, 0, 'Один символьний код', 'Один символьний код', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '120', '', '', 'Поле кодованих даних для особистого імені', 'Поле кодованих даних для особистого імені', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '120', 'a', 1, 0, 'Кодовані дані: особисті імена', 'Кодовані дані: особисті імена', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '123', '', 1, 'Поле кодованих даних для територіального або географічного імені', 'Поле кодованих даних для територіального або географічного імені', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '123', 'd', 0, 0, 'Координати — найзахідніша довгота', 'Координати — найзахідніша довгота', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '123', 'e', 0, 0, 'Координати — найбільш східна довгота', 'Координати — найбільш східна довгота', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '123', 'f', 0, 0, 'Координати — найбільш північна широта', 'Координати — найбільш північна широта', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '123', 'g', 0, 0, 'Координати — найбільш південна широта', 'Координати — найбільш південна широта', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '150', '', '', 'Поле кодованих даних для найменувань організацій', 'Поле кодованих даних для найменувань організацій', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '150', 'a', 1, 0, 'Найменування оброблюваних даних', 'Найменування оброблюваних даних', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '152', '', '', 'Коди правил каталогізації і системи предметизації', 'Коди правил каталогізації і системи предметизації', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '152', 'a', 0, 0, 'Правила каталогізації', 'Правила каталогізації', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '152', 'b', 0, 0, 'Система предметизації', 'Система предметизації', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '154', '', '', 'Поле кодованих даних для уніфікованих заголовків (попереднє)', 'Поле кодованих даних для уніфікованих заголовків (попереднє)', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '154', 'a', 1, 0, 'Дані обробки заголовка', 'Дані обробки заголовка', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '160', '', '', 'Код географічного регіону', 'Код географічного регіону', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '160', 'a', 1, 1, 'Код географічного регіону', 'Код географічного регіону', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '200', '', 1, 'Заголовок — ім’я особи', 'Заголовок — ім’я особи', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '200', '4', 0, 1, 'Код відносин', 'Код відносин',         -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', '7', 0, 0, 'Графіка', 'Графіка',                   -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', '8', 0, 0, 'Мова заголовка', 'Мова заголовка',     -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'a', 1, 0, 'Початковий елемент введення', 'Початковий елемент введення', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'b', 0, 0, 'Частина імені, окрім початкового елементу введення', 'Частина імені, окрім початкового елементу введення', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'c', 0, 0, 'Ідентифікуючі ознаки (окрім дат)', 'Ідентифікуючі ознаки (окрім дат)', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'd', 0, 0, 'Римські цифри', 'Римські цифри',       0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'f', 0, 0, 'Дати', 'Дати',                         0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'g', 0, 0, 'Розкриття ініціалів імені особи', 'Розкриття ініціалів імені особи', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'j', 0, 1, 'Підзаголовок форми', 'Підзаголовок форми', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'x', 0, 1, 'Тематичний підзаголовок', 'Тематичний підзаголовок', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'y', 0, 1, 'Географічний підзаголовок', 'Географічний підзаголовок', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '200', 'z', 0, 1, 'Хронологічний підзаголовок', 'Хронологічний підзаголовок', 0, 0, NULL, '', '', NULL, '', 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '300', '', 1, 'Довідкова примітка', 'Довідкова примітка', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '300', '6', 0, 0, 'Дані для зв’язку полів', 'Дані для зв’язку полів', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '300', '7', 0, 0, 'Графіка', 'Графіка',                   -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '300', 'a', 1, 0, 'Текст довідки', 'Текст довідки',       -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '305', '', 1, 'Посилальна примітка „див. також“', 'Посилальна примітка „див. також“', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '305', '6', 0, 0, 'Дані для зв’язку полів', 'Дані для зв’язку полів', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '305', '7', 0, 0, 'Графіка', 'Графіка',                   -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '305', 'a', 1, 1, 'Текст примітки', 'Текст примітки',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '305', 'b', 0, 1, 'Заголовок, до якого робиться посилання', 'Заголовок, до якого робиться посилання', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '310', '', 1, 'Посилальна примітка „див.“', 'Посилальна примітка „див.“', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '310', '6', 0, 0, 'Дані для зв’язку полів', 'Дані для зв’язку полів', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '310', '7', 0, 0, 'Графіка', 'Графіка',                   -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '310', 'a', 0, 0, 'Текст примітки', 'Текст примітки',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '310', 'b', 0, 1, 'Заголовок, до якого робиться посилання', 'Заголовок, до якого робиться посилання', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '320', '', 1, 'Загальна довідкова примітка', 'Загальна довідкова примітка', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '320', '6', 0, 0, 'Дані для зв’язку полів', 'Дані для зв’язку полів', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '320', 'a', 1, 1, 'Текст примітка', 'Текст примітка',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '330', '', 1, 'Примітка про область застосування', 'Примітка про область застосування', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '330', '6', 0, 0, 'Дані для зв’язку полів', 'Дані для зв’язку полів', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '330', '7', 0, 0, 'Графіка', 'Графіка',                   -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '330', 'a', 1, 0, 'Примітка про область застосування', 'Примітка про область застосування', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '340', '', 1, 'Біографія та примітка про діяльність', 'Біографія та примітка про діяльність', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '340', '6', 0, 0, 'Міжполе, що зв’язує дані', 'Міжполе, що зв’язує дані', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '340', '7', 0, 0, 'Сценарій каталогізації і сценарій базового заголовка', 'Сценарій каталогізації і сценарій базового заголовка', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '340', 'a', 1, 0, 'Примітка біографічна чи про діяльність', 'Примітка біографічна чи про діяльність', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '356', 1, '', 'Географічні примітки', 'Географічні примітки', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '356', '6', 0, 0, 'Міжполе, що зв’язує дані', 'Міжполе, що зв’язує дані', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '356', '7', 0, 0, 'Сценарій каталогізації і сценарій базового заголовка', 'Сценарій каталогізації і сценарій базового заголовка', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '356', 'a', 0, 0, 'Географічна примітка', 'Географічна примітка', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '400', '', 1, 'Формування посилання „див.“ — ім’я особи', 'Формування посилання „див.“ — ім’я особи', '');
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '400', '0', 0, 0, 'Текст пояснення', 'Текст пояснення',   -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', '2', 0, 0, 'Код системи предметизації', 'Код системи предметизації', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', '3', 0, 0, 'Номер запису', 'Номер запису',         -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', '4', 0, 0, 'Код знаку відношення', 'Код знаку відношення', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', '5', 0, 0, 'Управління формуванням посилань (контроль трасування)', 'Управління формуванням посилань (контроль трасування)', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', '6', 0, 0, 'Дані для зв’язку полів', 'Дані для зв’язку полів', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', '8', 0, 0, 'Мова заголовку', 'Мова заголовку',     -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'a', 0, 0, 'Елемент входження', 'Елемент входження', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'b', 0, 0, 'Частина імені окрім елементу входу', 'Частина імені окрім елементу входу', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'c', 0, 0, 'Додавання іменам окрім дат', 'Додавання іменам окрім дат', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'd', 0, 0, 'Римські цифри', 'Римські цифри',       0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'f', 0, 0, 'Дати', 'Дати',                         0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'g', 0, 0, 'Розширення ініціалів імені', 'Розширення ініціалів імені', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'j', 0, 1, 'Підрозділ форми', 'Підрозділ форми',   -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'x', 0, 1, 'Актуальний підрозділ', 'Актуальний підрозділ', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'y', 0, 1, 'Географічний підрозділ', 'Географічний підрозділ', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '400', 'z', 0, 1, 'Хронологічний підрозділ', 'Хронологічний підрозділ', 0, 0, NULL, '', '', NULL, '', 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '500', '', 1, 'Формування посилання „див. також“ — ім’я особи', 'Формування посилання „див. також“ — ім’я особи', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '500', '0', 0, 0, 'Текст пояснення', 'Текст пояснення',   -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', '2', 0, 0, 'Код системи предметизації', 'Код системи предметизації', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', '3', 0, 0, 'Номер запису', 'Номер запису',         -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', '4', 0, 1, 'Код знаку відношення', 'Код знаку відношення', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', '5', 0, 0, 'Управління формуванням посилань (контроль трасування)', 'Управління формуванням посилань (контроль трасування)', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', '6', 0, 0, 'Дані для зв’язку полів', 'Дані для зв’язку полів', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', '7', 0, 0, 'Графіка', 'Графіка',                   -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', '8', 0, 0, 'Мова заголовку', 'Мова заголовку',     -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'a', 0, 0, 'Елемент входження', 'Елемент входження', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'b', 0, 0, 'Частина імені окрім елементу входу', 'Частина імені окрім елементу входу', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'c', 0, 1, 'Додавання іменам окрім дат', 'Додавання іменам окрім дат', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'd', 0, 0, 'Римські цифри', 'Римські цифри',       0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'f', 0, 0, 'Дати', 'Дати',                         0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'g', 0, 0, 'Розширення ініціалів імені', 'Розширення ініціалів імені', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'j', 0, 1, 'Підрозділ форми', 'Підрозділ форми',   -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'x', 0, 1, 'Актуальний підрозділ', 'Актуальний підрозділ', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'y', 0, 1, 'Географічний підрозділ', 'Географічний підрозділ', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '500', 'z', 0, 1, 'Хронологічний підрозділ', 'Хронологічний підрозділ', 0, 0, NULL, '', '', NULL, '', 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '675', '', 1, 'Універсальна десяткова класифікація (УДК)', 'Універсальна десяткова класифікація (УДК)', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '675', '3', 0, 0, 'Зв’язок з форматом класифікації', 'Зв’язок з форматом класифікації', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '675', 'a', 0, 0, 'Індекс УДК, окремий або початковий в ряду', 'Індекс УДК, окремий або початковий в ряду', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '675', 'b', 1, 0, 'Індекси УДК, останній в ряду', 'Індекси УДК, останній в ряду', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '675', 'c', 1, 0, 'Пояснюючі слова', 'Пояснюючі слова',   -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '675', 'v', 0, 0, 'Відомості про видання УДК', 'Відомості про видання УДК', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '675', 'z', 0, 0, 'Мова видання', 'Мова видання',         -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '676', '', 1, 'Десяткова класифікація Дьюї (ДК Дьюї)', 'Десяткова класифікація Дьюї (ДК Дьюї)', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '676', '3', 0, 0, 'Зв’язок з форматом класифікації', 'Зв’язок з форматом класифікації', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '676', 'a', 0, 0, 'Індекс ДК Дьюї, окремий або початковий в ряду', 'Індекс ДК Дьюї, окремий або початковий в ряду', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '676', 'b', 1, 0, 'Індекс ДК Дьюї, кінцевий в ряду', 'Індекс ДК Дьюї, кінцевий в ряду', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '676', 'c', 1, 0, 'Пояснюючі слова', 'Пояснюючі слова',   -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '676', 'v', 0, 0, 'Зведення про видання Десяткової класифікації Дьюї', 'Зведення про видання Десяткової класифікації Дьюї', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '676', 'z', 0, 0, 'Мова видання', 'Мова видання',         -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '680', '', 1, 'Класифікація Бібліотеки Конгресу (КБК)', 'Класифікація Бібліотеки Конгресу (КБК)', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '680', '3', 0, 0, 'Зв’язок з форматом класифікації', 'Зв’язок з форматом класифікації', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '680', 'a', 0, 0, 'Індекс КБК, окремий або початковий в ряду', 'Індекс КБК, окремий або початковий в ряду', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '680', 'b', 1, 0, 'Індекси КБК, останній в ряду', 'Індекси КБК, останній в ряду', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '680', 'c', 1, 0, 'Пояснюючі слова', 'Пояснюючі слова',   -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '686', '', 1, 'Індекси інших класифікацій', 'Індекси інших класифікацій', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '686', '3', 0, 0, 'Зв’язок з форматом класифікації', 'Зв’язок з форматом класифікації', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '686', 'a', 0, 0, 'Індекс, окремий або початковий в ряду', 'Індекс, окремий або початковий в ряду', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '686', 'b', 1, 0, 'Індекс, кінцевий в послідовності', 'Індекс, кінцевий в послідовності', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '686', 'c', 1, 0, 'Пояснюючі слова', 'Пояснюючі слова',   -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '700', '', 1, 'Зв’язаний заголовок — ім’я особи', 'Зв’язаний заголовок — ім’я особи', '');
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '700', '2', 0, 0, 'Код системи предметизації', 'Код системи предметизації', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', '3', 0, 0, 'Номер запису', 'Номер запису',         -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', '4', 0, 1, 'Код знаку відношення', 'Код знаку відношення', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', '7', 0, 0, 'Графіка', 'Графіка',                   -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', '8', 0, 0, 'Мова заголовку', 'Мова заголовку',     -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'a', 0, 0, 'Зв’язаний заголовок — ім’я особи', 'Зв’язаний заголовок — ім’я особи', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'b', 0, 0, 'Частина імені окрім елементу входу', 'Частина імені окрім елементу входу', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'c', 0, 1, 'Додавання іменам окрім дат', 'Додавання іменам окрім дат', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'd', 0, 0, 'Римські цифри', 'Римські цифри',       0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'f', 0, 0, 'Дати', 'Дати',                         0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'g', 0, 0, 'Розширення ініціалів імені', 'Розширення ініціалів імені', -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'j', 0, 1, 'Підрозділ форми', 'Підрозділ форми',   -1, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'x', 0, 1, 'Актуальний підрозділ', 'Актуальний підрозділ', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'y', 0, 1, 'Географічний підрозділ', 'Географічний підрозділ', 0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '700', 'z', 0, 1, 'Хронологічний підрозділ', 'Хронологічний підрозділ', 0, 0, NULL, '', '', NULL, '', 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '801', 1, '', 'Джерело запису', 'Джерело запису', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '801', 'a', 0, 0, 'Країна', 'Країна',                     0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '801', 'b', 0, 0, 'Організація', 'Організація',           0, 0, NULL, '', '', NULL, '', 0),
 ('', 'SAUT', '801', 'c', 0, 0, 'Дата введення або останнього редагування запису', 'Дата введення або останнього редагування запису', 0, 0, NULL, '', '', NULL, '', 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '810', '', 1, 'Джерело, в якому виявлена інформація про заголовок', 'Джерело, в якому виявлена інформація про заголовок', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '810', 'a', 0, 0, 'Назва джерела', 'Назва джерела',       -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '810', 'b', 0, 0, 'Знайдена інформація', 'Знайдена інформація', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '815', '', '', 'Джерело, в якому не виявлена інформація про заголовок', 'Джерело, в якому не виявлена інформація про заголовок', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '815', 'a', 1, 1, 'Назва джерела', 'Назва джерела',       -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '820', '', 1, 'Інформація про використання заголовка в полі 2--', 'Інформація про використання заголовка в полі 2--', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '820', 'a', 1, 1, 'Текст примітки', 'Текст примітки',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '825', '', 1, 'Приклад, приведений в примітці', 'Приклад, приведений в примітці', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '825', 'a', 1, 0, 'Текст примітки', 'Текст примітки',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '830', '', 1, 'Загальна примітка каталогізатора', 'Загальна примітка каталогізатора', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '830', 'a', 0, 1, 'Текст примітки', 'Текст примітки',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '835', '', 1, 'Інформація про виключений заголовок', 'Інформація про виключений заголовок', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '835', 'a', 0, 1, 'Текст примітки', 'Текст примітки',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '835', 'b', 1, 0, 'Заголовок, на який замінений виключений', 'Заголовок, на який замінений виключений', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '835', 'd', 1, 0, 'Дата транзакції', 'Дата транзакції',   -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '836', '', 1, 'Замінена інформація заголовку', 'Замінена інформація заголовку', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '836', 'b', 0, 0, 'Замінено заголовок', 'Замінено заголовок', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '836', 'd', 0, 0, 'Дата транзакції', 'Дата транзакції',   -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '856', '', 1, 'Електронічне розташування та доступ', 'Електронічне розташування та доступ', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '856', 'a', 0, 1, 'Ім’я сервера', 'Ім’я сервера',         -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'b', 0, 1, 'Номер доступу', 'Номер доступу',       -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'c', 0, 1, 'Інформація про компресію', 'Інформація про компресію', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'd', 0, 1, 'Шлях', 'Шлях',                         -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'e', 0, 0, 'Дата і година консультацій та доступу', 'Дата і година консультацій та доступу', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'f', 0, 1, 'Електронічне ім’я', 'Електронічне ім’я', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'g', 1, 0, 'Загальноприйняте ім’я ресурсу (URN)', 'Загальноприйняте ім’я ресурсу (URN)', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'h', 0, 0, 'Процесор запиту', 'Процесор запиту',   -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'i', 0, 1, 'Команда', 'Команда',                   -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'j', 0, 0, 'Біт на секунду', 'Біт на секунду',     -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'k', 0, 0, 'Пароль', 'Пароль',                     -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'l', 0, 0, 'Вхід/логін сеансу', 'Вхід/логін сеансу', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'm', 0, 1, 'Контакт для допомоги доступу', 'Контакт для допомоги доступу', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'n', 0, 0, 'Ім’я розташування вузла в підполі $a', 'Ім’я розташування вузла в підполі $a', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'o', 0, 0, 'Операційна система', 'Операційна система', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'p', 0, 0, 'Порт', 'Порт',                         -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'q', 0, 0, 'Електронічний тип формату', 'Електронічний тип формату', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'r', 0, 0, 'Налаштування', 'Налаштування',         -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 's', 0, 1, 'Розмір файлу', 'Розмір файлу',         -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 't', 0, 1, 'Емуляція терміналу', 'Емуляція терміналу', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'u', 0, 0, 'Загальноприйняте розміщення ресурсу (URL)', 'Загальноприйняте розміщення ресурсу (URL)', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'v', 0, 1, 'Години доступності електронічного ресурсу', 'Години доступності електронічного ресурсу', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'w', 0, 1, 'Контрольний номер запису', 'Контрольний номер запису', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'x', 1, 0, 'Непублікована примітка', 'Непублікована примітка', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'y', 0, 0, 'Метод доступу', 'Метод доступу',       -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '856', 'z', 0, 1, 'Загальна примітка', 'Загальна примітка', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);

INSERT INTO auth_tag_structure  (authtypecode, tagfield, mandatory, repeatable, liblibrarian, libopac, authorised_value) VALUES
 ('SAUT', '886', '', 1, 'Дані, не конвертовані з початкового Формату', 'Дані, не конвертовані з початкового Формату', NULL);
INSERT INTO  auth_subfield_structure (frameworkcode, authtypecode, tagfield, tagsubfield, mandatory, repeatable, liblibrarian, libopac, tab, hidden, kohafield, authorised_value, value_builder, isurl, seealso, linkid) VALUES
 ('', 'SAUT', '886', '2', 0, 0, 'Системний код', 'Системний код',       -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '886', 'a', 0, 1, 'Тег поля початкового формату', 'Тег поля початкового формату', -1, 0, NULL, NULL, NULL, NULL, NULL, 0),
 ('', 'SAUT', '886', 'b', 0, 1, 'Індикатори та підполя поля початкового формату', 'Індикатори та підполя поля початкового формату', -1, 0, NULL, NULL, NULL, NULL, NULL, 0);
