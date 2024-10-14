camper: /project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Pager usage is off.
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> \c universe
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "universe" as user "freecodecamp".
universe=> ALTER TABLE more_info ADD PRIMARY KEY (more_info_id);
ALTER TABLE
universe=> ALTER TABLE galaxy ADD FOREIGN KEY (star_id)   REFERENCES star   (star_id);
ALTER TABLE
universe=> ALTER TABLE star   ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id);
ALTER TABLE
universe=> ALTER TABLE star   ADD FOREIGN KEY (planet_id) REFERENCES planet (planet_id);
ALTER TABLE
universe=> ALTER TABLE planet ADD FOREIGN KEY (star_id)   REFERENCES star   (star_id);
ALTER TABLE
universe=> ALTER TABLE planet ADD FOREIGN KEY (moon_id)   REFERENCES moon   (moon_id);
ALTER TABLE
universe=> ALTER TABLE moon   ADD FOREIGN KEY (planet_id) REFERENCES planet (planet_id);
ALTER TABLE
universe=> pg_dump -cC --inserts -U freecodecamp universe > universe.sql
universe-> 
