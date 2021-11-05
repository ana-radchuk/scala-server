#FROM openjdk:8-jdk-alpine
#COPY /*.jar secondary-scala-assembly-0.1.jar
#EXPOSE 3000
#ENTRYPOINT ["java","-jar","secondary-scala-assembly-0.1.jar"]

FROM hseeberger/scala-sbt:11.0.6_1.3.9_2.13.1 AS build
COPY ./ ./
RUN sbt assembly

FROM openjdk:11-jre-slim
COPY --from=build ./ ./
ENTRYPOINT ["java","-jar","/root/target/scala-2.12/secondary-scala-assembly-0.1.jar"]
#COPY --from=build /root/.ivy2/cache/org.scala-lang/scala-library/jars/scala-library-2.12.12.jar /scala-library-2.12.12.jar





