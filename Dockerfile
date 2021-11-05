FROM hseeberger/scala-sbt:11.0.6_1.3.9_2.13.1 AS build

COPY ./ ./

RUN sbt compile clean package

FROM openjdk:11-jre-slim

COPY --from=build /root/target/scala-2.12/*.jar /secondary-scala.jar
COPY --from=build /root/.ivy2/cache/org.scala-lang/scala-library/jars/scala-library-2.12.12.jar /scala-library-2.12.12.jar
