insert into OWNERS (ID, EMAIL, JURIDICAL_PERSON, NAME, SURNAME)
VALUES (1, 'harry.burgess@companyemail.com', true, 'Harry', 'Burgess');
insert into OWNERS (ID, EMAIL, JURIDICAL_PERSON, NAME, SURNAME)
VALUES (2, 'sofia.wilkins@universalemail.com', false, 'Sofia', 'Wilkins');
insert into OWNERS (ID, EMAIL, JURIDICAL_PERSON, NAME, SURNAME)
VALUES (3, 'mason.bird@universalemail.com', false, 'Mason', 'Bird');

insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (1, 'London', 18, 'Guild Street');
insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (2, 'Leeds', 79, 'Lincoln Green Lane');
insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (3, 'Ipswich', 73, 'Iolaire Road');
insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (4, 'London', 25, 'Berkeley Rd');
insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (5, 'March', 18, 'Guild Street');
insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (6, 'Thetford', 10, 'Nelson Cres');
insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (7, 'Wisbich', 9, 'North St');
insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (8, 'King''s Lynn', 38, 'Golf Road');
insert into ADDRESS (ID, CITY, NUMBER, STREET)
VALUES (9, 'Spalding', 34, 'Shire Oak Road');

insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (1, 483922, 'A', 65, 1, 1);
insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (2, 232420, 'H', 75, 2, 1);
insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (3, 242632, 'A', 70, 3, 1);
insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (4, 2433755, 'I', 250, 4, 1);
insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (5, 195680, 'H', 85, 5, 2);
insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (6, 213540, 'H', 90, 6, 2);
insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (7, 182633, 'A', 80, 7, 2);
insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (8, 155980, 'A', 75, 8, 3);
insert into BUILDING_RECORDS (ID, MARKET_VALUE, PROPERTY_TYPE, SIZE_M2, ADDRESS_ID, OWNER_ID)
VALUES (9, 188842, 'H', 80, 9, 3);