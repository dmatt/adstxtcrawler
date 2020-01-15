BEGIN TRANSACTION;
DROP TABLE IF EXISTS disqus_adstxt;
DROP TABLE IF EXISTS pub_adstxt;

CREATE TABLE pub_adstxt(
       SITE_DOMAIN                  TEXT    NOT NULL,
       SITE_SHORTNAME               TEXT    NOT NULL,
       EXCHANGE_DOMAIN              TEXT    NOT NULL,
       SELLER_ACCOUNT_ID            TEXT    NOT NULL,
       ACCOUNT_TYPE                 TEXT    NOT NULL,
       TAG_ID                       TEXT    NOT NULL,
       ENTRY_COMMENT                TEXT    NOT NULL,
       UPDATED                      DATE    DEFAULT (datetime('now','localtime'))
);

CREATE TABLE disqus_adstxt(
       EXCHANGE_DOMAIN              TEXT    ,
       SELLER_ACCOUNT_ID            TEXT    ,
       ACCOUNT_TYPE                 TEXT    ,
       TAG_ID                       TEXT    
);

INSERT INTO `disqus_adstxt` VALUES ('openx.com', '537143344', 'RESELLER', '');
INSERT INTO `disqus_adstxt` VALUES ('openx.com', '537125356', 'RESELLER', '6a698e2ec38604c6');
INSERT INTO `disqus_adstxt` VALUES ('openx.com', '537133236', 'RESELLER', '6a698e2ec38604c6');
INSERT INTO `disqus_adstxt` VALUES ('openx.com', '540717801', 'RESELLER', '6a698e2ec38604c6');
INSERT INTO `disqus_adstxt` VALUES ('openx.com', '539154393', 'RESELLER', '');

COMMIT;
