#!/bin/bash

#Move to the jar folder
cd lib


# Install additional JAR files to your local Maven repository
mvn install:install-file -Dfile=memcached-1.0.jar -DgroupId=com.danga.MemCached -DartifactId=memcached -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=notifier.jar -DgroupId=com.travelex.notifier -DartifactId=notifier -Dversion=11.1.0.jbossorg-1 -Dpackaging=jar
mvn install:install-file -Dfile=notifier.jar -DgroupId=com.travelex.notifier -DartifactId=notifier-client-common -Dversion=11.1.0 -Dpackaging=jar
mvn install:install-file -Dfile=notifier.jar -DgroupId=com.travelex.notifier -DartifactId=notifier-clients -Dversion=11.1.0 -Dpackaging=jar
mvn install:install-file -Dfile=prime-validation-1.5.jar -DgroupId=com.travelex.prime -DartifactId=prime-validation -Dversion=1.5 -Dpackaging=jar -e -X
mvn install:install-file -Dfile=prime-config-1.1.jar -DgroupId=com.travelex.prime -DartifactId=prime-config -Dversion=1.1 -Dpackaging=jar
mvn install:install-file -Dfile=sac-1.3.jar -DgroupId=sac -DartifactId=sac -Dversion=1.3 -Dpackaging=jar
mvn install:install-file -Dfile=wire-bank-client-1.0.1.jar -DgroupId=com.travelex.wire -DartifactId=wire-bank-client -Dversion=1.0.1 -Dpackaging=jar
mvn install:install-file -Dfile=wire-rate-client-1.0.1.jar -DgroupId=com.travelex.wire -DartifactId=wire-rate-client -Dversion=1.0.1 -Dpackaging=jar
mvn install:install-file -Dfile=wire-corridor-client-1.0.1.jar -DgroupId=com.travelex.wire -DartifactId=wire-corridor-client -Dversion=1.0.1 -Dpackaging=jar
mvn install:install-file -Dfile=wire-order-client-1.0.1.jar -DgroupId=com.travelex.wire -DartifactId=wire-order-client -Dversion=1.0.1 -Dpackaging=jar
mvn install:install-file -Dfile=wire-sender-client-1.0.1.jar -DgroupId=com.travelex.wire -DartifactId=wire-sender-client -Dversion=1.0.1 -Dpackaging=jar
mvn install:install-file -Dfile=wire-beneficiary-client-1.0.1.jar -DgroupId=com.travelex.wire -DartifactId=wire-beneficiary-client -Dversion=1.0.1 -Dpackaging=jar
mvn install:install-file -Dfile=wire-client-common-1.0.1.jar -DgroupId=com.travelex.wire -DartifactId=wire-client-common -Dversion=1.0.1 -Dpackaging=jar
mvn install:install-file -Dfile=wire-client.jar -DgroupId=com.travelex.wire -DartifactId=wire-client -Dversion=1.0.1 -Dpackaging=jar
mvn install:install-file -Dfile=javax.jms-1.1.jar -DgroupId=javax.jms -DartifactId=jms -Dversion=1.1 -Dpackaging=jar
mvn install:install-file -Dfile=nekohtml-1.9.12.jar -DgroupId=nekohtml -DartifactId=nekohtml -Dversion=1.9.12 -Dpackaging=jar
mvn install:install-file -Dfile=je-3.3.62.jar -DgroupId=com.sleepycat -DartifactId=je -Dversion=3.3.62 -Dpackaging=jar
mvn install:install-file -Dfile=xercesImpl-2.9.1.jar -DgroupId=xercesImpl -DartifactId=xercesImpl -Dversion=2.9.1 -Dpackaging=jar
mvn install:install-file -Dfile=xalan-2.7.1.jar -DgroupId=xalan -DartifactId=xalan -Dversion=2.7.1 -Dpackaging=jar
mvn install:install-file -Dfile=serializer-2.7.1.jbossorg-1.jar -DgroupId=xalan -DartifactId=serializer -Dversion=2.7.1.jbossorg-1 -Dpackaging=jar
mvn install:install-file -Dfile=xalan-2.7.1.jbossorg-1.jar -DgroupId=xalan -DartifactId=xalan -Dversion=2.7.1.jbossorg-1 -Dpackaging=jar
mvn install:install-file -Dfile=serializer-2.7.1.jbossorg-1.jar -DgroupId=xalan -DartifactId=serializer -Dversion=2.7.1.jbossorg-1 -Dpackaging=jar
mvn install:install-file -Dfile=xercesImpl-2.9.1-jbossas-1.jar -DgroupId=xerces -DartifactId=xercesImpl -Dversion=2.9.1-jbossas-1 -Dpackaging=jar
mvn install:install-file -Dfile=saaj-impl-1.3.16-jbossorg-1.jar -DgroupId=com.sun.xml.messaging -DartifactId=saaj-impl -Dversion=1.3.16-jbossorg-1 -Dpackaging=jar



