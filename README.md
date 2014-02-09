# FIZno

project for http://freedomhack.in/

website is http://fizno.com/


The idea of this hackathon entry is to build a reproducable physical knowledge container. Eventually this would be a book-sized device which emits a wifi signal via which you can access the knowledge stored in it.

For the contents we chose a mix of reference material and educational resources:

* openstreetmap (32 Gb)
* all courses from Khan Academy (20 Gb)
* wikipedia (18 Gb)
* 11,000 books from the Gutenberg project (8 Gb)
* a history course from Coursera (6 Gb)
* an English course from British Council (< 1 Gb)
* the Ubuntu install CD (< 1 Gb)
* the declaration of human rights (< 1 Gb)

We prepared a Docker script that boots and starts downloading these resources via bittorrent. We also made the resources available as a torrent feed, using the rss format, so that's extra relevant for this hackathon in memory of Aaron Swartz! :)

To make sure these important resources will forever be available to future generations, please *seed our feed* by adding http://fizno.com/feed.rss to your bittorrent client (current total size about ~85Gb).

If you would like to actually build a fizno, then check out our Docker image by finding 'fizno' on github or on the docker index. We didn't get the wikipedia and openstreetmap viewers working, but all the course videos should be viewable using the node script (visit port 49080).

Anyway, this is mainly a proof-of-concept. Let us know if you want to help build something like this for real! :)
