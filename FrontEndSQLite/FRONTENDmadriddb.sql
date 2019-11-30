BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `TransportDetail` (
	`TransportID`	INTEGER,
	`TransportCategoryID`	INTEGER,
	`TransportName`	varchar ( 255 ),
	PRIMARY KEY(`TransportID`)
);
INSERT INTO `TransportDetail` (TransportID,TransportCategoryID,TransportName) VALUES (1,1,'Anton Martin');
CREATE TABLE IF NOT EXISTS `TransportCategory` (
	`TransportCategoryID`	INTEGER,
	`TransportCategoryName`	Varchar ( 255 ),
	PRIMARY KEY(`TransportCategoryID`)
);
INSERT INTO `TransportCategory` (TransportCategoryID,TransportCategoryName) VALUES (1,'Metro');
INSERT INTO `TransportCategory` (TransportCategoryID,TransportCategoryName) VALUES (2,'Bus');
INSERT INTO `TransportCategory` (TransportCategoryID,TransportCategoryName) VALUES (3,'Train');
CREATE TABLE IF NOT EXISTS `RestaurantDetail` (
	`RestaurantDetailID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Neighbourhood`	INTEGER,
	`Budget`	INTEGER,
	`Website`	TEXT,
	`Cuisine`	INTEGER,
	`Times`	TEXT,
	`DetailText`	TEXT,
	`RestaurantName`	TEXT,
	`RestaurantSubTitle`	TEXT,
	`MapCoordinates`	TEXT,
	`RestaurantImage`	TEXT,
	`GlutenFreeOptions`	INTEGER,
	`Address`	TEXT
);
INSERT INTO `RestaurantDetail` (RestaurantDetailID,Neighbourhood,Budget,Website,Cuisine,Times,DetailText,RestaurantName,RestaurantSubTitle,MapCoordinates,RestaurantImage,GlutenFreeOptions,Address) VALUES (1,1,3,'http://www.benares.es',1,'Afternoons, Evenings','Though Atul Kocha no longer has involvement with Benares, this madrid outpost of the classic outpost still bears a lot of his signatures. Superbly presented and flavoursome indian culinary delights with a wonderful ambience and attentful staff. ','Benares 233','Exquisite Indian food from Atul Kotcha','40.427843, -3.692900','items_restaurants_benares.jpg',1,'Calle de Zurbano, 5, 28010 Madrid');
INSERT INTO `RestaurantDetail` (RestaurantDetailID,Neighbourhood,Budget,Website,Cuisine,Times,DetailText,RestaurantName,RestaurantSubTitle,MapCoordinates,RestaurantImage,GlutenFreeOptions,Address) VALUES (2,2,2,'http://www.celicioso.es',2,'Afternoons, Evenings','Celicioso has declined recently, with inattentive staff and very same same gluten free fayre. Though previously they offered excellent service, they now rest on their laurels and dependent on the time of day you could fingd yourself ignored. The food is decent but not outstanding, in one of the worlds great celiac cities. ','Celicioso
','Gluten Free Bakery','40.421342, -3.700981','items_restaurants_celicioso.jpg',1,'Calle de Hortaleza, 3, 28004 Madrid');
INSERT INTO `RestaurantDetail` (RestaurantDetailID,Neighbourhood,Budget,Website,Cuisine,Times,DetailText,RestaurantName,RestaurantSubTitle,MapCoordinates,RestaurantImage,GlutenFreeOptions,Address) VALUES (4,2,3,'http://www.lizzaran.es',4,'Mornings, Afternoons, Evenings','The first Lizarran opened its doors in Sitges in 1988, and since then we’ve been a leader in pinchos, tapas, and leisure gastronomy. Lizarran is, without a doubt, one of the most recognized brands of the national panorama.','Lizarran','Quality Basque Food','40.419585, -3.706769','items_restaurants_lizarran.jpg',1,'Calle de Preciados, 33, 28013 Madrid');
INSERT INTO `RestaurantDetail` (RestaurantDetailID,Neighbourhood,Budget,Website,Cuisine,Times,DetailText,RestaurantName,RestaurantSubTitle,MapCoordinates,RestaurantImage,GlutenFreeOptions,Address) VALUES (5,3,1,'http://www.llaollao.es',2,'All Day','Enjoy the llaollao experience with the most delicious toppings, all the sauces you can imagine and the freshest and most nutritious fruit. And cool off with the healthiest frozen yogurt.','llao Llao','Frozen Yoghurt, Fruit and other Dessert Fun','40.416198, -3.705984','items_restaurants_llaollao.jpg',1,'Calle de Postas, 14, 28012 Madrid');
CREATE TABLE IF NOT EXISTS `Neighbourhood` (
	`NeighbourhoodID`	INTEGER,
	`NeighbourhoodName`	TEXT,
	PRIMARY KEY(`NeighbourhoodID`)
);
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (1,'Anton Martin');
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (2,'Gran Via');
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (3,'Sol');
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (4,'Arguelles');
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (5,'Salamanca');
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (6,'Retiro');
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (7,'Vallecas');
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (8,'Nuevos Ministerios');
INSERT INTO `Neighbourhood` (NeighbourhoodID,NeighbourhoodName) VALUES (9,'La Latina');
CREATE TABLE IF NOT EXISTS `Item` (
	`ItemID`	INTEGER,
	`CategoryID`	INTEGER,
	`ItemImage`	TEXT,
	`ItemName`	TEXT,
	`ItemSubtext`	TEXT,
	`MapCoordinates`	TEXT,
	PRIMARY KEY(`ItemID`)
);
INSERT INTO `Item` (ItemID,CategoryID,ItemImage,ItemName,ItemSubtext,MapCoordinates) VALUES (1,1,'items_restaurants_benares.jpg','Benares','Exquisite Indian food from Atul Kotcha','40.427843, -3.693900');
INSERT INTO `Item` (ItemID,CategoryID,ItemImage,ItemName,ItemSubtext,MapCoordinates) VALUES (2,1,'items_restaurants_celicioso.jpg','Celicioso','Gluten Free Bakery','40.421342, -3.700981');
INSERT INTO `Item` (ItemID,CategoryID,ItemImage,ItemName,ItemSubtext,MapCoordinates) VALUES (3,1,'items_restaurants_lamafia.jpg','La Mafia','Themed Italian','40.429660, -3.689092');
INSERT INTO `Item` (ItemID,CategoryID,ItemImage,ItemName,ItemSubtext,MapCoordinates) VALUES (4,1,'items_restaurants_lizarran.jpg','LIzzaran','Basque Pintxchos','40.420178, -3.706698');
INSERT INTO `Item` (ItemID,CategoryID,ItemImage,ItemName,ItemSubtext,MapCoordinates) VALUES (5,1,'items_restaurants_llaollao.jpg','Llao Llao','Frozen Yoghurt and Toppings','40.416186, -3.705959');
INSERT INTO `Item` (ItemID,CategoryID,ItemImage,ItemName,ItemSubtext,MapCoordinates) VALUES (6,1,'items_restaurants_maestrochurero.jpg','Maestro Churrero','Gluten Free Churros Snacks','40.416790, -3.699980');
INSERT INTO `Item` (ItemID,CategoryID,ItemImage,ItemName,ItemSubtext,MapCoordinates) VALUES (7,1,'items_restaurants_tommymels.jpg','Tommy Mels','American Diner with great GF options','40.417593, -3.701690');
CREATE TABLE IF NOT EXISTS `Cuisine` (
	`CuisineID`	INTEGER,
	`CuisineName`	TEXT,
	PRIMARY KEY(`CuisineID`)
);
INSERT INTO `Cuisine` (CuisineID,CuisineName) VALUES (1,'Indian');
INSERT INTO `Cuisine` (CuisineID,CuisineName) VALUES (2,'Desserts');
INSERT INTO `Cuisine` (CuisineID,CuisineName) VALUES (3,'American');
INSERT INTO `Cuisine` (CuisineID,CuisineName) VALUES (4,'Spanish');
INSERT INTO `Cuisine` (CuisineID,CuisineName) VALUES (5,'Italian');
CREATE TABLE IF NOT EXISTS `CityTransportOption` (
	`CityTransportOptionID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`CityTransportTitle`	TEXT,
	`CityTransportSubTitle`	TEXT,
	`CityTransportDescription`	TEXT,
	`CityTransportMapImage`	TEXT,
	`CityTransportItemImage`	TEXT,
	`DisabilityDetail`	TEXT
);
INSERT INTO `CityTransportOption` (CityTransportOptionID,CityTransportTitle,CityTransportSubTitle,CityTransportDescription,CityTransportMapImage,CityTransportItemImage,DisabilityDetail) VALUES (1,'Metro','Huge yet simple Network','The Madrid Metro is the main way to get around Madrid, particularly within the city centre. There are a total of 13 lines and 302 stations. The lines are color coded to make navigation simple.

It is worth remembering that some lines are quicker than others, for example the line 10. 

Most visitors to Madrid will have little need for anything other than a Zone A ticket.','https://storage.googleapis.com/madridtravel/Transport/plano-metro-madrid-2019-01.png','https://storage.googleapis.com/madridtravel/Transport/metro_madrid.jpg','All Metro stations from 2007 have been required to offer disability access. As a result, you will find elevators at all stations without step free access. ');
INSERT INTO `CityTransportOption` (CityTransportOptionID,CityTransportTitle,CityTransportSubTitle,CityTransportDescription,CityTransportMapImage,CityTransportItemImage,DisabilityDetail) VALUES (2,'Bus','Air-conditioned but Slow','The Madrid Bus system, the EMT, is an excellent network of buses that can get you to a number of interesting locations. However, though stations are labelled well the routes can be very disorienting. It is worth checking at the stations to confirm your route. 

The main interchanges are Plaza Castellana and Avenida de America. You can use any tourist limited day passes on the bus, otherwise you will require an EMT carnet book or a tarjeta multi pass.

There are over 200 lines and 2000 buses, so be sure to check the route carefully and know your stop in advanc','https://storage.googleapis.com/madridtravel/Transport/madrid-bus-map.jpg','https://storage.googleapis.com/madridtravel/Transport/bus.jpg','All buses are air conditioned and provide space for wheelchair passengers.');
CREATE TABLE IF NOT EXISTS `CitySiteCategory` (
	`CitySiteCategoryID`	INTEGER,
	`CitySiteCategoryName`	Varchar ( 255 ),
	PRIMARY KEY(`CitySiteCategoryID`)
);
INSERT INTO `CitySiteCategory` (CitySiteCategoryID,CitySiteCategoryName) VALUES (1,'Religious');
INSERT INTO `CitySiteCategory` (CitySiteCategoryID,CitySiteCategoryName) VALUES (2,'Historical');
INSERT INTO `CitySiteCategory` (CitySiteCategoryID,CitySiteCategoryName) VALUES (3,'Political');
INSERT INTO `CitySiteCategory` (CitySiteCategoryID,CitySiteCategoryName) VALUES (4,'Military');
CREATE TABLE IF NOT EXISTS `CitySite` (
	`CitySiteID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`CitySiteName`	TEXT,
	`CitySiteSubtext`	TEXT,
	`CitySiteDescription`	TEXT,
	`CitySiteWebsite`	TEXT,
	`CitySiteTelephone`	TEXT,
	`CitySiteAddress`	TEXT,
	`CitySiteOpeningHours`	TEXT,
	`CitySiteCost`	TEXT,
	`NeighbourhoodID`	INTEGER,
	`TransportID`	INTEGER,
	`DisabilityAccess`	INTEGER,
	`ChildFriendly`	INTEGER,
	`CitySiteCategoryID`	INTEGER,
	`CitySiteImageURL`	TEXT,
	`CitySiteMapCoordinates`	TEXT,
	`CitySiteFavourite`	INTEGER,
	`DisabilityDetail`	TEXT,
	`ChildDetail`	TEXT
);
INSERT INTO `CitySite` (CitySiteID,CitySiteName,CitySiteSubtext,CitySiteDescription,CitySiteWebsite,CitySiteTelephone,CitySiteAddress,CitySiteOpeningHours,CitySiteCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CitySiteCategoryID,CitySiteImageURL,CitySiteMapCoordinates,CitySiteFavourite,DisabilityDetail,ChildDetail) VALUES (1,'Plaza Mayor','Central hub of Madrid','The Plaza Mayor has seen many events through the years, from muslim rule through inquisitions and civil wars. It remains a busy hub of activity particularly in summer, with entertainers, restaurants and other curiousities. ','http://www.plazamayor.es','0182717317137','1 Plaza Mayor','24/7','Free',1,1,1,1,3,'https://storage.googleapis.com/madridtravel/Sites/plazamayor.jpg','40.415122, -3.706317',NULL,'There is an access ramp leading on from the Sol side of the square. The cobbles can be tiresome. ','There are often entertainers in the square, but have some euros handy. ');
INSERT INTO `CitySite` (CitySiteID,CitySiteName,CitySiteSubtext,CitySiteDescription,CitySiteWebsite,CitySiteTelephone,CitySiteAddress,CitySiteOpeningHours,CitySiteCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CitySiteCategoryID,CitySiteImageURL,CitySiteMapCoordinates,CitySiteFavourite,DisabilityDetail,ChildDetail) VALUES (2,'Bernabeu Stadium','Home to Real Madrid','One of the largest stadiums int he world, even if you are not a football fan this is a must visit. ','http://www.realmadrid.es','003319319831','Av. de Concha Espina, 1, 28036 Madrid, Spain','M-S 1000-2000','8 Euros (Tour)',2,2,1,NULL,2,'https://storage.googleapis.com/madridtravel/Sites/bernabeu.jpg','40.453315, -3.688323',NULL,'There are plenty of ramps around the stadium and disability seating for matchdays. ','Even if your child does not like football, the tour is very interactive with lots of audio and visuals. ');
INSERT INTO `CitySite` (CitySiteID,CitySiteName,CitySiteSubtext,CitySiteDescription,CitySiteWebsite,CitySiteTelephone,CitySiteAddress,CitySiteOpeningHours,CitySiteCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CitySiteCategoryID,CitySiteImageURL,CitySiteMapCoordinates,CitySiteFavourite,DisabilityDetail,ChildDetail) VALUES (3,'Temple Debod','Ancient Egypt in Madrid','During the 1970s when Egypt constructed a Dam, they presented this unique gift to the City of Madrid to preserve its heritage. It was moved piecemeal to the centre of madrid, a tranquil oasis in the bustling plaza espana.','www.templedebod.com','003319319836','Av. de Concha Espina, 1, 28036 Madrid, Spain','24/7','Free',2,2,'',1,2,'https://storage.googleapis.com/madridtravel/Sites/templedebod.jpg','40.424324, -3.717737',NULL,'The area can be difficult to get to except on foot. There is a route there from the top end however. ','A very enjoyable area to run around , just be careful of the water (though it is shallow). ');
CREATE TABLE IF NOT EXISTS `CityShoppingCategory` (
	`CityShoppingCategoryID`	INTEGER,
	`CityShoppingCategoryName`	Varchar ( 255 ),
	PRIMARY KEY(`CityShoppingCategoryID`)
);
INSERT INTO `CityShoppingCategory` (CityShoppingCategoryID,CityShoppingCategoryName) VALUES (1,'Mall');
INSERT INTO `CityShoppingCategory` (CityShoppingCategoryID,CityShoppingCategoryName) VALUES (2,'Market');
INSERT INTO `CityShoppingCategory` (CityShoppingCategoryID,CityShoppingCategoryName) VALUES (3,'Books');
INSERT INTO `CityShoppingCategory` (CityShoppingCategoryID,CityShoppingCategoryName) VALUES (4,'Clothes');
INSERT INTO `CityShoppingCategory` (CityShoppingCategoryID,CityShoppingCategoryName) VALUES (5,'Food');
INSERT INTO `CityShoppingCategory` (CityShoppingCategoryID,CityShoppingCategoryName) VALUES (6,'Hobbies');
CREATE TABLE IF NOT EXISTS `CityShopping` (
	`CityShoppingID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`CityShoppingName`	TEXT,
	`CityShoppingSubtext`	TEXT,
	`CityShoppingDescription`	TEXT,
	`CityShoppingWebsite`	TEXT,
	`CityShoppingAddress`	TEXT,
	`CityShoppingTelephone`	TEXT,
	`BudgetID`	INTEGER,
	`NeighbourhoodID`	INTEGER,
	`TransportID`	INTEGER,
	`CityShoppingCategoryID`	INTEGER,
	`DisabilityAccess`	INTEGER,
	`ChildFriendly`	INTEGER,
	`CityShoppingImageURL`	TEXT,
	`CityShoppingMapCoordinates`	TEXT,
	`CityShoppingFavourite`	INTEGER,
	`DisabilityDetail`	TEXT,
	`ChildDetail`	TEXT
);
INSERT INTO `CityShopping` (CityShoppingID,CityShoppingName,CityShoppingSubtext,CityShoppingDescription,CityShoppingWebsite,CityShoppingAddress,CityShoppingTelephone,BudgetID,NeighbourhoodID,TransportID,CityShoppingCategoryID,DisabilityAccess,ChildFriendly,CityShoppingImageURL,CityShoppingMapCoordinates,CityShoppingFavourite,DisabilityDetail,ChildDetail) VALUES (1,'El Corte Ingles','Upmarket Department Store','A department store','http://elcorte.es','Various.','006148718737',1,1,2,2,1,1,'https://storage.googleapis.com/madridtravel/Shops/elcorte.jpg','40.417702, -3.704797',NULL,'There are lifts at most stores, together with an accessibility ramp.','The toy section is normally well stocked, and some quick meal options including an Ice Cream Parlour is available on the food court floor. ');
CREATE TABLE IF NOT EXISTS `CityRestaurant` (
	`CityRestaurantID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`CityRestaurantName`	TEXT,
	`CityRestaurantSubtext`	TEXT,
	`CityRestaurantDescription`	TEXT,
	`CityRestaurantWebsite`	TEXT,
	`CityRestaurantTelephone`	TEXT,
	`CityRestaurantAddress`	TEXT,
	`CityRestaurantOpeningHours`	TEXT,
	`BudgetID`	INTEGER,
	`CuisineID`	INTEGER,
	`NeighbourhoodID`	INTEGER,
	`TransportID`	INTEGER,
	`DisabilityAccess`	INTEGER,
	`ChildFriendly`	INTEGER,
	`CityRestaurantImageURL`	TEXT,
	`CityRestaurantMapCoordinates`	TEXT,
	`CityRestaurantFavourite`	INTEGER,
	`DisabilityDetail`	TEXT,
	`ChildDetail`	TEXT,
	`GlutenFree`	INTEGER,
	`Halal`	INTEGER,
	`Kosher`	INTEGER,
	`Vegan`	INTEGER,
	`DairyFree`	INTEGER,
	`Vegetarian`	INTEGER,
	`DietaryDetail`	INTEGER
);
INSERT INTO `CityRestaurant` (CityRestaurantID,CityRestaurantName,CityRestaurantSubtext,CityRestaurantDescription,CityRestaurantWebsite,CityRestaurantTelephone,CityRestaurantAddress,CityRestaurantOpeningHours,BudgetID,CuisineID,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityRestaurantImageURL,CityRestaurantMapCoordinates,CityRestaurantFavourite,DisabilityDetail,ChildDetail,GlutenFree,Halal,Kosher,Vegan,DairyFree,Vegetarian,DietaryDetail) VALUES (1,'Benares','Indian Luxury','Benares is Atul Kochas falgship restaurant in Madrid, after parting company with the london branch. Exquisite indian food with prices to match.','http://www.benares.es','0033938318318','Calle de Zurbano, 8-14
28010 Madrid','2pm-Late',3,1,2,1,1,0,'https://storage.googleapis.com/madridtravel/Restaurants/benares.jpg','40.427875, -3.693911',NULL,'There is an access ramp and plenty of space available. There is also a disabled toilet. ','It is highly recommended to leave your child at home unless its early afternoon. The haute cuisine atmosphere may jar with your little darlings. ',1,1,NULL,1,NULL,1,'The chef can alter the menu to suit most diets,and are very accomodating. ');
INSERT INTO `CityRestaurant` (CityRestaurantID,CityRestaurantName,CityRestaurantSubtext,CityRestaurantDescription,CityRestaurantWebsite,CityRestaurantTelephone,CityRestaurantAddress,CityRestaurantOpeningHours,BudgetID,CuisineID,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityRestaurantImageURL,CityRestaurantMapCoordinates,CityRestaurantFavourite,DisabilityDetail,ChildDetail,GlutenFree,Halal,Kosher,Vegan,DairyFree,Vegetarian,DietaryDetail) VALUES (2,'Al Mounir','Morrocan Flavour','Al Mounir is a restaurant near Retiro offering a variety of Moroccan dishes. The decor is superb together with the tagines. If there is better arab food in Madrid, we are yet to find it. ','https://www.restaurantealmounia.es/','(+34) 914 350 828','C/ Recoletos, 5 28001 Madrid','1pm-4pm, 8pm - Midnight',3,2,1,1,1,0,'https://storage.googleapis.com/madridtravel/Restaurants/almounir.jpg','40.422367, -3.690597',NULL,'There is a small step that may be problematic for disabled visitors. ','This is not a place for children, apart from early afternoons at the weekend. ','',1,1,1,NULL,1,'All the food is Halal, and they can prepare kosher dishes upon request. Celiacs may struggle. ');
INSERT INTO `CityRestaurant` (CityRestaurantID,CityRestaurantName,CityRestaurantSubtext,CityRestaurantDescription,CityRestaurantWebsite,CityRestaurantTelephone,CityRestaurantAddress,CityRestaurantOpeningHours,BudgetID,CuisineID,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityRestaurantImageURL,CityRestaurantMapCoordinates,CityRestaurantFavourite,DisabilityDetail,ChildDetail,GlutenFree,Halal,Kosher,Vegan,DairyFree,Vegetarian,DietaryDetail) VALUES (3,'La Mafia','Bizarre Themed Italian','La Mafia is a themed italian restaurant in the style of the Godfather films. Stereotypes aside, there are some excellent dishes to try here. ','https://www.lamafia.es','(+34) 91 733 76 95','Pº de la Castellana, Quatro Torres','12.30pm-4pm, 8.30pm - Midnight',2,2,2,1,1,1,'https://storage.googleapis.com/madridtravel/Restaurants/lamafia.jpg','40.475007,-3.687685',NULL,'There is a ramp for disabled visitors. 	','A very family friendly venue. You may even be given a rose to take home. ',1,'','','',NULL,1,'There is gluten free pasta avaiable. There is a lot of pork on the menu and a risk of cross contamination at busy times, so those with religious restrictions may want to stick to vegetarian options. ');
CREATE TABLE IF NOT EXISTS `CityMuseumCategory` (
	`CityMuseumCategoryID`	INTEGER,
	`CityMuseumCategoryName`	Varchar ( 255 ),
	PRIMARY KEY(`CityMuseumCategoryID`)
);
INSERT INTO `CityMuseumCategory` (CityMuseumCategoryID,CityMuseumCategoryName) VALUES (1,'Museum');
INSERT INTO `CityMuseumCategory` (CityMuseumCategoryID,CityMuseumCategoryName) VALUES (2,'Art Gallery');
CREATE TABLE IF NOT EXISTS `CityMuseum` (
	`CityMuseumID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`CityMuseumName`	TEXT,
	`CityMuseumSubtext`	TEXT,
	`CityMuseumDescription`	TEXT,
	`CityMuseumWebSite`	TEXT,
	`CityMuseumTelephone`	TEXT,
	`CityMuseumAddress`	TEXT,
	`CityMuseumOpeningHours`	TEXT,
	`CityMuseumCost`	TEXT,
	`NeighbourhoodID`	INTEGER,
	`TransportID`	INTEGER,
	`DisabilityAccess`	INTEGER,
	`ChildFriendly`	INTEGER,
	`CityMuseumCategoryID`	INTEGER,
	`CityMuseumImageURL`	TEXT,
	`CityMuseumMapCoordinates`	TEXT,
	`CityMuseumFavourite`	INTEGER,
	`DisabilityDetail`	TEXT,
	`ChildDetail`	TEXT
);
INSERT INTO `CityMuseum` (CityMuseumID,CityMuseumName,CityMuseumSubtext,CityMuseumDescription,CityMuseumWebSite,CityMuseumTelephone,CityMuseumAddress,CityMuseumOpeningHours,CityMuseumCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityMuseumCategoryID,CityMuseumImageURL,CityMuseumMapCoordinates,CityMuseumFavourite,DisabilityDetail,ChildDetail) VALUES (1,'Reina Sofia','Europes Premier Modern Art Gallery','The Reina Sofia is in Madrid and houses 20th Century Art','htttp:///www.museoreinasofia.es','+34 917 74 10 00','Calle de Santa Isabel, 52, 28012 Madrid','9-10, M-S, Closed Tuesdays','10 EUR',1,1,1,1,2,'https://storage.googleapis.com/madridtravel/Museums/reina.jpg','40.409880, -3.694360',NULL,'Almost all public areas are accessible via ramp, walkway or lift. The Sabatini building is best accessed from the walkway on the edge of the plaza. ','Some caution is advised with some of the more explicit exhibits, for example the Luis Bunuel movies. ');
INSERT INTO `CityMuseum` (CityMuseumID,CityMuseumName,CityMuseumSubtext,CityMuseumDescription,CityMuseumWebSite,CityMuseumTelephone,CityMuseumAddress,CityMuseumOpeningHours,CityMuseumCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityMuseumCategoryID,CityMuseumImageURL,CityMuseumMapCoordinates,CityMuseumFavourite,DisabilityDetail,ChildDetail) VALUES (2,'Museum of the Americas','Fascinating window into the New World','This is a museum that details the ways of life of the peoples of latin america. Some fascinating exhibits.','http://www.mecd.gob.es/museodeamerica','(+34) 91 549 26 41','Avenidade los Reyes Católicos, 628040','Tue-Sun 10am-5.30PM Closed Wednesdays','3 EUR',2,1,1,1,1,'https://storage.googleapis.com/madridtravel/Museums/museoamericas.JPG','40.438572, -3.721998',NULL,'There are access ramps to the building and a lift for the different floors of the permanent exhibition, as well as wheelchairs, available on request.','Very interactive museum which your children will not be bored with');
INSERT INTO `CityMuseum` (CityMuseumID,CityMuseumName,CityMuseumSubtext,CityMuseumDescription,CityMuseumWebSite,CityMuseumTelephone,CityMuseumAddress,CityMuseumOpeningHours,CityMuseumCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityMuseumCategoryID,CityMuseumImageURL,CityMuseumMapCoordinates,CityMuseumFavourite,DisabilityDetail,ChildDetail) VALUES (3,'Prado Museum','Arguably best Renaissance Art collection in the World','A collection of renaissance greats, with a particular emphasis on spanish painters. El Greco, Goya, Valazquez and many more can be found within this huge museum.','https://www.museodelprado.es','+34 913 30 28 00','Calle de Ruiz de Alarcon, 23, 28014 Madrid','Mon-Sun. 10am- 9pm. ','14 EUR',2,1,1,'null	',2,'https://storage.googleapis.com/madridtravel/Museums/prado.jpg','40.414035, -3.692106',NULL,'Excellent access throughout the site.','Some of the exhibits, such as Goyas Black Paintings, are unsuitable. ');
CREATE TABLE IF NOT EXISTS `CityEventCategory` (
	`CityEventCategoryID`	INTEGER,
	`CityEventCategoryName`	Varchar ( 255 ),
	PRIMARY KEY(`CityEventCategoryID`)
);
INSERT INTO `CityEventCategory` (CityEventCategoryID,CityEventCategoryName) VALUES (1,'Sports');
INSERT INTO `CityEventCategory` (CityEventCategoryID,CityEventCategoryName) VALUES (2,'Music');
INSERT INTO `CityEventCategory` (CityEventCategoryID,CityEventCategoryName) VALUES (3,'Theatre');
CREATE TABLE IF NOT EXISTS `CityEvent` (
	`CityEventID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`CityEventName`	TEXT,
	`CityEventDescription`	TEXT,
	`CityEventWebSite`	TEXT,
	`CityEventTelephone`	TEXT,
	`CityEventAddress`	TEXT,
	`CityEventStartDate`	INTEGER,
	`CityEventEndDate`	INTEGER,
	`CityEventCost`	TEXT,
	`NeighbourhoodID`	INTEGER,
	`TransportID`	INTEGER,
	`DisabilityAccess`	INTEGER,
	`ChildFriendly`	INTEGER,
	`CityEventCategoryID`	INTEGER,
	`CityEventImageURL`	TEXT,
	`CityEventMapCoordinates`	TEXT,
	`CityEventSubtext`	TEXT,
	`CityEventFavourite`	INTEGER,
	`DisabilityDetail`	TEXT,
	`ChildDetail`	TEXT
);
INSERT INTO `CityEvent` (CityEventID,CityEventName,CityEventDescription,CityEventWebSite,CityEventTelephone,CityEventAddress,CityEventStartDate,CityEventEndDate,CityEventCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityEventCategoryID,CityEventImageURL,CityEventMapCoordinates,CityEventSubtext,CityEventFavourite,DisabilityDetail,ChildDetail) VALUES (1,'Davis Cup','The biggest international tennis tournament hits Madrid this November, featuring an array of top talent.','http://www.daviscup.com','00618478747','Cmo. de Perales, 23, 28041 Madrid, Spain',19318,19323,'15-90 EUR',1,1,1,0,1,'http://storage.googleapis.com/madridtravel/Events/daviscup.jpg','40.369102, -3.684451','International Tennis Event',NULL,'There is good step free access. Disability seating can be booked online. Chaperones for those with sight difficulties are available. ','A great venue for children, with lots to do away from the court including shops, food and other entertainment. ');
INSERT INTO `CityEvent` (CityEventID,CityEventName,CityEventDescription,CityEventWebSite,CityEventTelephone,CityEventAddress,CityEventStartDate,CityEventEndDate,CityEventCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityEventCategoryID,CityEventImageURL,CityEventMapCoordinates,CityEventSubtext,CityEventFavourite,DisabilityDetail,ChildDetail) VALUES (2,'Real Madrid vs Galatasary','Champions League action as Madrids biggest club face Turkeys. Expect a night of goals and excitement.','www.realmadrid.com','004818718417','Av. de Concha Espina, 1, 28036 Madrid, Spain',19318,19318,'40-50 EUR',2,1,0,1,2,'http://storage.googleapis.com/madridtravel/Events/galatasary.jpg','40.453266, -3.688377','Champions League Football',NULL,'There is good step free access and lots of disabiltiy seating available at the stadium. It can get very crowded so best to get there in plenty of time before kickoff. ','Children over the age of 5 as long as they are football fans should enjoy themselves. Make sure to get seats close to the action as it can induce vertigo for the higher seats. ');
INSERT INTO `CityEvent` (CityEventID,CityEventName,CityEventDescription,CityEventWebSite,CityEventTelephone,CityEventAddress,CityEventStartDate,CityEventEndDate,CityEventCost,NeighbourhoodID,TransportID,DisabilityAccess,ChildFriendly,CityEventCategoryID,CityEventImageURL,CityEventMapCoordinates,CityEventSubtext,CityEventFavourite,DisabilityDetail,ChildDetail) VALUES (3,'Madrid Jazz Festival','One of Europes biggest Jazz Festivals comes to Madrid, featuring a stellar lineup across multiple venues and times.','www.madridjazzfestival.com','004989183193','Multiple Locations',19320,19340,'Various',2,2,1,0,1,'http://storage.googleapis.com/madridtravel/Events/madridjazzfestival.jpg','40.415007, -3.701802','European Jazz Extravaganza',1,'The step-free access can be challenging in some locations, so it is best to check with the venue. Persons with autism may struggle with the lights at some venues. ','This is a highly unsuitable event for children. ');
CREATE TABLE IF NOT EXISTS `Category` (
	`CategoryID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`CategoryName`	TEXT,
	`CategoryImage`	TEXT,
	`CategoryDetail`	TEXT,
	`CategoryBackgroundImage`	TEXT
);
INSERT INTO `Category` (CategoryID,CategoryName,CategoryImage,CategoryDetail,CategoryBackgroundImage) VALUES (1,'Restaurants','categories_restaurants.png','Food for all tastes','restaurantbackground.jpg');
INSERT INTO `Category` (CategoryID,CategoryName,CategoryImage,CategoryDetail,CategoryBackgroundImage) VALUES (2,'Landmarks','categories_monuments.png','See the major historical sights','backgroundlandmarks.jpg');
INSERT INTO `Category` (CategoryID,CategoryName,CategoryImage,CategoryDetail,CategoryBackgroundImage) VALUES (3,'Museums and Galleries','categories_museums.png','Something for every culture vulture','backgroundmuseums.jpg');
INSERT INTO `Category` (CategoryID,CategoryName,CategoryImage,CategoryDetail,CategoryBackgroundImage) VALUES (4,'Shopping','categories_shopping.png','Shops for every budget','backgroundshopping.jpg');
INSERT INTO `Category` (CategoryID,CategoryName,CategoryImage,CategoryDetail,CategoryBackgroundImage) VALUES (5,'Events and Festivals','categories_events.png','Whats happening and when','backgroundevents.jpg');
INSERT INTO `Category` (CategoryID,CategoryName,CategoryImage,CategoryDetail,CategoryBackgroundImage) VALUES (6,'Activities For Children','categories_children.png','Fun for the whole family','backgroundchildren.jpg');
INSERT INTO `Category` (CategoryID,CategoryName,CategoryImage,CategoryDetail,CategoryBackgroundImage) VALUES (7,'Transport','categories_transport.png','Planes, Trains and Automobiles','backgroundtransport.jpg');
CREATE TABLE IF NOT EXISTS `Budget` (
	`BudgetID`	INTEGER,
	`BudgetName`	TEXT,
	PRIMARY KEY(`BudgetID`)
);
INSERT INTO `Budget` (BudgetID,BudgetName) VALUES (1,'Low');
INSERT INTO `Budget` (BudgetID,BudgetName) VALUES (2,'Medium');
INSERT INTO `Budget` (BudgetID,BudgetName) VALUES (3,'High');
COMMIT;
