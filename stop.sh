#! /bin/sh
#java -X8192msm -Xmx12288m -Dsolr.solr.home=/SOLR -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -jar start.jar --stop
java -Dsolr.solr.home=/SOLR -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -jar start.jar --stop