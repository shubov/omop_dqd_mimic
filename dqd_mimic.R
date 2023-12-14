install.packages("bigrquery")
install.packages("rJava")
install.packages("devtools")
install.packages("DatabaseConnector")
devtools::install_github("OHDSI/DataQualityDashboard")

library(rJava)
library(devtools)
library(DatabaseConnector)
library(bigrquery)

Sys.setenv("DATABASECONNECTOR_JAR_FOLDER" = "/Users/shubov/Projects/THESIS/mimic_eval/db_drivers")
downloadJdbcDrivers("bigquery")

connectionString <- "jdbc:bigquery://https://www.googleapis.com/bigquery/v2:443;ProjectId=booming-edge-403620;OAuthType=0;OAuthServiceAcctEmail=r-data-quality-check@booming-edge-403620.iam.gserviceaccount.com;OAuthPvtKeyPath=/Users/shubov/Projects/THESIS/mimic_eval/booming-edge-403620-f6bb11ff66d2.json;EnableSession=1"
connectionDetails <- createConnectionDetails(
  dbms="bigquery",
  connectionString=connectionString,
  user="aitau.info@gmail.com",
  password="Larlin65!"
)
connection <- connect(connectionDetails)

cdmDatabaseSchema <- "booming-edge-403620.mimiciv_full_current_cdm"
resultsDatabaseSchema <- "booming-edge-403620.mimiciv_full_current_cdm"
cdmSourceName <- "mimic"
cdmVersion <- "5.4"
numThreads <- 1
sqlOnly <- FALSE
sqlOnlyIncrementalInsert <- FALSE
sqlOnlyUnionCount <- 25
outputFolder <- "/Users/shubov/Projects/THESIS/mimic_eval"
outputFile <- "results.json"
verboseMode <- TRUE
writeToTable <- TRUE
writeTableName <- "dqdashboard_results"
writeToCsv <- FALSE
csvFile <- "csv_output_dqd.csv"
checkLevels <- c("TABLE", "FIELD", "CONCEPT")
checkNames <- c()
tablesToExclude <- c("CONCEPT", "VOCABULARY", "CONCEPT_ANCESTOR", "CONCEPT_RELATIONSHIP", "CONCEPT_CLASS", "CONCEPT_SYNONYM", "RELATIONSHIP", "DOMAIN")

DataQualityDashboard::executeDqChecks(connectionDetails = connectionDetails,
                                      cdmDatabaseSchema = cdmDatabaseSchema,
                                      resultsDatabaseSchema = resultsDatabaseSchema,
                                      cdmSourceName = cdmSourceName,
                                      cdmVersion = cdmVersion,
                                      numThreads = numThreads,
                                      sqlOnly = sqlOnly,
                                      sqlOnlyUnionCount = sqlOnlyUnionCount,
                                      sqlOnlyIncrementalInsert = sqlOnlyIncrementalInsert,
                                      outputFolder = outputFolder,
                                      outputFile = outputFile,
                                      verboseMode = verboseMode,
                                      writeToTable = writeToTable,
                                      writeToCsv = writeToCsv,
                                      csvFile = csvFile,
                                      checkLevels = checkLevels,
                                      tablesToExclude = tablesToExclude,
                                      checkNames = checkNames)

jsonFilePath <- "/Users/shubov/Projects/THESIS/mimic_eval/results.json"

DataQualityDashboard::writeJsonResultsToTable(connectionDetails = connectionDetails,
                                              resultsDatabaseSchema = resultsDatabaseSchema,
                                              jsonFilePath = jsonFilePath)

DataQualityDashboard::viewDqDashboard(jsonFilePath)
