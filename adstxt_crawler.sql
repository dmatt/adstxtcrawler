BEGIN TRANSACTION;
DROP TABLE IF EXISTS disqus_adstxt;
DROP TABLE IF EXISTS pub_adstxt;

CREATE TABLE pub_adstxt(
       SITE_DOMAIN                  TEXT    NOT NULL,
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

INSERT INTO `disqus_adstxt` VALUES ('google.com', 'pub-6650322601660058', 'DIRECT', 'f08c47fec0942fa0');
INSERT INTO `disqus_adstxt` VALUES ('google.com', 'pub-6650322601660058', 'RESELLER', 'f08c47fec0942fa0');
INSERT INTO `disqus_adstxt` VALUES ('rubiconproject.com', '13380', 'DIRECT', '0bfd66d529a55807');
INSERT INTO `disqus_adstxt` VALUES ('rubiconproject.com', '13380', 'RESELLER', '0bfd66d529a55807');
INSERT INTO `disqus_adstxt` VALUES ('rubiconproject.com', '18798', 'DIRECT', '0bfd66d529a55807');
INSERT INTO `disqus_adstxt` VALUES ('rubiconproject.com', '18798', 'RESELLER', '0bfd66d529a55807');
INSERT INTO `disqus_adstxt` VALUES ('appnexus.com', '9733', 'RESELLER', NULL);
INSERT INTO `disqus_adstxt` VALUES ('appnexus.com', '2797', 'DIRECT', NULL);
INSERT INTO `disqus_adstxt` VALUES ('appnexus.com', '1226', 'RESELLER', NULL);
INSERT INTO `disqus_adstxt` VALUES ('appnexus.com', '3364', 'RESELLER', NULL);
INSERT INTO `disqus_adstxt` VALUES ('aol.com', '53392', 'RESELLER', NULL);
INSERT INTO `disqus_adstxt` VALUES ('openx.com', '537133236', 'RESELLER', '6a698e2ec38604c6');
INSERT INTO `disqus_adstxt` VALUES ('openx.com', '540717801', 'RESELLER', '6a698e2ec38604c6');

COMMIT;
