#! /bin/sh
#java -X8192msm -Xmx12288m -Dsolr.solr.home=/SOLR -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -jar /SOLR/SolrServer/current/start.jar
java -Djetty.home=/SOLR/SolrServer/current/solr -Dsolr.solr.home=/SOLR/SolrServer/current/solr -Dsolr.data.dir=/SOLR/data -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -jar /SOLR/SolrServer/current/start.jar
#java -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -Dsolr.data.dir=/Users/xinghao/Documents/rails/solr-4.6.0-weedfinda/data -jar start.jar
