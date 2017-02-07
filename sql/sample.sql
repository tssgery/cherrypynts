

INSERT INTO `beers` (`name`, `beerStyleId`, `abv`, `srmEst`, `ibuEst`, `notes`, `createdDate`, `modifiedDate`) VALUES
('Darth Vader', '80', '6.0', '38.0', '66.0', 'Rich, toasty malt flavor. Generous amounts of pine, citrus and roasted coffee. Herbal aroma with a punch of IPA hops at the finish.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Row 2 Hill 56', '33', '5.5', '5.1', '40', '100% Simcoe hops make up this beer from start to finish! It is named for the location in the experimental hop yard in Yakima, WA, where it was first created.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Loon Lake Porter', '78', '5.0', '24', '24.6', 'With a low IBU and a mellow base recipe, this is a beer that can be turned from grain to glass quickly. The smoke aroma is prominent, but not at all overpowering. The sweetness of the malt really balances this beer well.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Reaper''s Mild', '36', '5.0', '19.1', '20.4', 'A full flavored session beer that is both inexpensive to brew and quick to go from grain to glass. Ready to drink in a couple weeks, if you push it.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Deception Cream Stout', '43', '8.0', '36', '27', 'Coffee and chocolate hit you up front intermingled with smooth caramel flavors that become noticeable mid-palate. Nice roasty finish rounds it out. Balanced and not cloying at all, but obviously leaning slightly to the sweeter side. Very smooth and creamy.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Haus Pale Ale', '33', '9.1', '5.0', '39.0', 'Pale straw-gold color with two fingers of fluffy white head. Bread dough and cracker aromas up front, followed immediately by pine and grapefruit. Clean, crisp and dangerously sessionable.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Two Hearted Ale', '49', '7.3', '5.6', '52.6', 'American malts and enormous hop additions give this beer a crisp finish and an incredibly floral aroma.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Skeeter Pee', '100', '4.2', '0', '0', 'The original, easy to drink, naturally fermented lemon drink. Bitter, sweet, and a kick in the teeth. This hot-weather thirst quencher puts commercialized lemon-flavored malt beverages to shame.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Black Peach Tea', '102', '0.0', '0', '0', 'Black tea infused with the unmistakable summertime flavor of juicy, orchard-fresh peaches and just the right amount of natural milled cane sugar.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
('Aloha Morning', '105', '0.0', '0', '0', 'Children''s strawberry and citrus punch, thinned to suit an adult pallet using only the highest quality dihydrogen monoxide available.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );


INSERT INTO `kegs` ( label, kegTypeId, make, model, serial, stampedOwner, stampedLoc, notes, kegStatusCode, createdDate, modifiedDate ) VALUES
( '1', '1', 'Cornelius', 'Super Champion', '16530387', 'Johnstown Production Center', '(Unknown)', 'One hanndle cracked', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '2', '1', 'Spartanburg', 'Challenger VI', '81175979', 'Joyce Bev', 'Washington D.C.', 'Green handles', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '3', '1', 'Cornelius', 'Super Champion', '75162875', 'Pepi Cola Btlg Co', 'Oskaloosa, IA', '', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '4', '1', 'Cornelius', 'Super Champion', '77320513', 'Binghamton Btlg Co', '(Unknown)', '', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '5', '1', 'Cornelius', 'Super Champion', '80224203', 'Pepsi Btlg Co', 'Southern CA', 'Green handles', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '6', '1', 'Spartanburg', 'Challenger VI', '290880483', 'Pepsi Cola Btlg Co', 'San Diego', '', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '7', '1', 'Cornelius', 'Super Champion', '83129068', 'Pepsi Cola Btlg Co', '(Unknown)', '', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '8', '1', 'Cornelius', 'Super Champion', '78143233', 'Pepsi Cola Btlg Co', 'Parkersburg WVA', '', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '9', '1', 'Spantanburg', 'Challenger VI', '112620585', 'Pepsi Cola Btlg Co', 'Aleghany, NY', 'Blue handles', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '10', '1', 'Cornelius', 'Super Champion', '82217553', 'Pepsi Cola Seven Up', 'Mpls St Paul', '', 'SERVING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '11', '1', 'Cornelius', 'Super Champion', '77143229', 'So Conn Seven Up', 'S Norwalk Conn', 'Green handles', 'SECONDARY', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '12', '1', 'Cornelius', 'Super Champion', '86018983', 'Seltzer Rydholm', 'Aub Port Aug', '', 'SECONDARY', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '13', '1', 'Cornelius', 'Super Champion', '84405189', 'Pepsi Cola Btlg Co', 'Williamsport, PA', '', 'DRY_HOPPING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '14', '1', 'Cornelius', 'Super Champion', '80273216', 'Pepsi Cola Btlg Co', 'Waterloo, IA', '', 'DRY_HOPPING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '15', '1', 'Cornelius', 'Super Champion', '78225083', 'Pepsi Cola Btlg Co', 'San Diego', '', 'CONDITIONING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '16', '1', 'Firestone', 'Challenger VI', '103760380', 'Pepsi Cola Btlg Co', 'San Diego', '', 'CONDITIONING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '17', '1', 'Cornelius', 'Super Champion', '85017588', 'Pepsi Cola Btlg Co', 'Fresno, CA', '', 'CLEAN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '18', '1', 'Firestone', 'Challenger VI', '214311080', 'Dr Pepper Company', 'Dallas Texas 75265', '', 'CLEAN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '19', '1', 'Cornelius', 'Super Champion', '79282429', 'Pepsi Cola Btlg Co', 'San Francisco CA 2 79', '', 'CLEAN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '20', '1', 'Cornelius', 'Super Champion', '79629286', 'Pepsi Cola Btlg Co', 'Vickers Rock PA', '', 'CLEAN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '21', '1', 'Cornelius', 'Super Champion', '83127465', 'Pepsi Cola Btlg Co', 'Mpls and St Paul', '', 'CLEAN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '22', '1', 'Firestone', 'Challenger VI', '071410882', 'Pepsi PBG', '(Unknown)', '', 'NEEDS_CLEANING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '23', '1', 'Cornelius', 'Super Champion', '83114663', 'Pepsi Cola Seven Up', 'Mpls and St Paul', 'Leaks at pressure relief valve', 'NEEDS_PARTS', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( '24', '1', 'Cornelius', 'Super Champion', '83295909', 'PBG', '(Unknown)', 'Leaks at lid/body interface when < 15 PSI', 'NEEDS_REPAIRS', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );



INSERT INTO `taps` ( beerId, tapNumber ) VALUES
( '1', '1' ),
( '5', '2' ),
( '8', '3' );



INSERT or REPLACE INTO `config` ( configName, configValue, displayName, showOnPanel, createdDate, modifiedDate ) VALUES
('samplesLoaded', '1', 'Sample Data Loaded', 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


UPDATE `config` SET configValue='3' WHERE configname='numberOfTaps';


