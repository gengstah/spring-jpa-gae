## Spring and JPA over BigTable - using Gradle as build tool

This project is a prototype for developing Spring-based web application that uses Java Persistence API (JPA) 2 [Java Specification Request (JSR) 317][] that will run on [Google App Engine][]. 
Given that the built-in datastore of [Google App Engine][] is [BigTable][] (a non-relational database), the only JPA implementation supported by Google App Engine is Data Nucleus. 

## Demo

[Spring and JPA over BigTable][]

## Building from source

The project uses a [Gradle][]-based build system. In the instructions
below, `./gradlew` is invoked from the root of the source tree and serves as
a cross-platform, self-contained bootstrap mechanism for the build.

### prerequisites
Be sure that your `JAVA_HOME` environment variable points to the installed `jdk` folder
of your JDK installation.

### check out sources
`git clone git://github.com/gengstah/spring-jpa-gae.git`

### import sources into your Eclipse IDE
Run `./gradlew eclipse`. Gradle will automagically create eclipse's .project and .classpath files for you.
Then import the project to Eclipse.

### compile and test and build war file
Run `./gradlew build`

### running a local dev server of [Google App Engine][]

Run `./gradlew gaeRun`

[Spring and JPA over BigTable]: http://spring-jpa-gae.appspot.com/
[Gradle]: http://www.gradle.org/
[Google App Engine]: https://appengine.google.com/
[BigTable]: http://en.wikipedia.org/wiki/BigTable
[Java Specification Request (JSR) 317]: http://jcp.org/en/jsr/detail?id=317
