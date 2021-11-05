name := "secondary-scala"

version := "0.1"

scalaVersion := "2.12.12"

val akkaVersion = "2.6.5"
val akkaHttpVersion = "10.2.0"

libraryDependencies ++= Seq(
  "commons-io" % "commons-io" % "2.6",

  "com.typesafe.akka" %% "akka-stream" % akkaVersion,
  "com.typesafe.akka" %% "akka-actor-typed" % akkaVersion,

  "com.typesafe.akka" %% "akka-http" % akkaHttpVersion,
  "com.typesafe.akka" %% "akka-http-spray-json" % akkaHttpVersion,
)

