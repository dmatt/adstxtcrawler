## Synopsis

An example crawler for ads.txt files given a list of URLs or domains etc and saves them to a SQLite DB table.

## Usage Example
```
Usage: adstxt_crawler.py [options]

Options:
  -h, --help            show this help message and exit
  -t FILE, --targets=FILE
                        list of domains to crawler ads.txt from
  -d FILE, --database=FILE
                        Database to dump crawled data into
  -v, --verbose         Increase verbosity (specify multiple times for more)
  -l                    (Optional) table name within database to write crawled data to
```
## Targets File 

The targets file can be a list of domains, URLs etc.  For each line the crawler with extract the full hostname, validate it and cause a request to http://HOSTNAME/ads.txt

``` bash
$ cat target_domains.txt 
#https://chicagotribune.com
#http://latimes.com/sports
#washingtonpost.com
#http://nytimes.com/index.html
localhosttribune.com
```

## Installation

The project depends on these libraries and programs installed

* Python 2 or better
* Python HTTP Requests libary
* sqlite3

Create the virtual env:

`virtualenv adstxt-venv`

Activate your new venv:

`adstxt-venv/bin/activate`

Install packages from `requirements.txt` in your new venv:

`pip install -r requirements.txt`

Execute this command to install the DB table 
``` bash
$ sqlite3 adstxt.db < adstxt_crawler.sql
```

## Running

The usual usage would be to pass a filename of target URLs and a filename of the SQLite DB. Add the optional `-l` to specify a table name other than the default `pub_adstxt`; Useful for crawling a hosted ads.txt text and populate the results in a different table for which to compare against the default table.

``` bash
$ python adstxt_crawler.py -t target_domains.txt -d adstxt.db
Wrote 3 records from 1 URLs to adstxt.db
```
(writen to default table "pub_adstxt" within adstxt.db)

```bash
$ python adstxt_crawler.py -t disqus_target_domains.txt -d adstxt.db -l disqus_adstxt
Wrote 3 records from 1 URLs to adstxt.db
```
(writen to table "disqus_adstxt" within adstxt.db)

Upon each run a sequence of entries in adstxt_crawler.log is created.

You can examine the DB records created as follows:
``` bash
$echo "select * from adstxt;" | sqlite3 adstxt.db
```
You can clear the DB records as follows:
``` bash
$echo "delete from adstxt;" | sqlite3 adstxt.db
```

## Warnings 

This is an example prototype crawler and would be suitable only for a very modest production usage.  It doesn't contain a lot of niceties of a production crawler, such as parallel HTTP download and parsing of the data files, stateful recovery of target servers being down, usage of a real production DB server etc.

## Contributors

Initial author is Neal Richter (neal@hebbian.io)

## License

The open source license used is the 2-clause BSD license

