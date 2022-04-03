-- update personal detail table
UPDATE `personal_detail` 
set phone_number = concat('+91',right(phone_number, 10)), country='India' WHERE length(phone_number) > 13 and left(phone_number,4) not in 
('+234',
'+263',
'+975',
'+977', 
'+880',
'+973',
'+964',
'+972',
'+962',
'+965',
'+961',
'+968',
'+970',
'+974',
'+966',
'+963',
'+971',
'+967',
'+260'
)
and LEFT(phone_number, 3) not in 
(
'+90',
'+20',
'+98')

-- clean kundli detail/problem-detail table
UPDATE `kundli_detail` 
set phone_number = concat('+91',right(phone_number, 10)) WHERE length(phone_number) > 13 and left(phone_number,4) not in 
('+234',
'+263',
'+975',
'+977', 
'+880',
'+973',
'+964',
'+972',
'+962',
'+965',
'+961',
'+968',
'+970',
'+974',
'+966',
'+963',
'+971',
'+967',
'+260'
)
and LEFT(phone_number, 3) not in 
(
'+90',
'+20',
'+98')

-- select unclean phone numbers from personal details
SELECT name, phone_number, city, country, concat('+91',right(phone_number, 10)) FROM `personal_detail` WHERE length(phone_number) > 13 and left(phone_number,4) not in 
('+234',
'+263',
'+975',
'+977', 
'+880',
'+973',
'+964',
'+972',
'+962',
'+965',
'+961',
'+968',
'+970',
'+974',
'+966',
'+963',
'+971',
'+967',
'+260'
)
and LEFT(phone_number, 3) not in 
(
'+90',
'+20',
'+98');
