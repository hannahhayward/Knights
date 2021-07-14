CREATE TABLE IF NOT EXISTS castles (  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT  'update time',
    name varchar(255) comment 'Name of Castle'
    origin VARCHAR (255) comment 'Country of Origin'
) default charset utf8 comment '';
CREATE TABLE IF NOT EXISTS knights (  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT  'update time',
    name varchar(255) comment 'Name of Knight',
    title varchar(255) comment 'Title of Knight',
    origin VARCHAR (255) comment 'Country of Origin',
    yearOfBirth INT comment 'Year of Birth',
    yearOfDeath INT comment 'Year of Death',
    castleId INT  NOT  NULL COMMENT 'FK: Castle',

    FOREIGN KEY (castleId) REFERENCES castles(id) on Delete CASCADE 
) default charset utf8 comment '';
