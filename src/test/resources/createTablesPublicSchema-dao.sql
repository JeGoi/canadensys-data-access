CREATE TABLE occurrence (
auto_id INTEGER NOT NULL,
associatedmedia TEXT,
catalogNumber TEXT,
_references TEXT,
collectionCode TEXT,
continent VARCHAR(15),
country VARCHAR(90),
county VARCHAR(90),
municipality VARCHAR(90),
datasetName VARCHAR(50),
habitat TEXT,
locality TEXT,
kingdom VARCHAR(12),
phylum character varying(50),
_class character varying(100),
_order TEXT,
family TEXT,
genus character varying(100),
specificepithet character varying(100),
infraspecificepithet character varying(100),
species character varying(200),
recordedBy TEXT,
recordNumber TEXT,
institutioncode character varying(100),
scientificName TEXT,
rawscientificname TEXT,
scientificnameauthorship TEXT,
stateProvince TEXT,
taxonRank VARCHAR(25),
verbatimElevation TEXT,
minimumelevationinmeters DOUBLE PRECISION,
maximumelevationinmeters DOUBLE PRECISION,
decimallatitude DOUBLE PRECISION,
decimallongitude DOUBLE PRECISION,
eventdate VARCHAR(50),
starteventdate DATE,
endeventdate DATE,
sday smallint,
smonth smallint,
syear smallint,
eday smallint,
emonth smallint,
eyear smallint,
decade smallint,
averagealtituderounded integer,
hascoordinates boolean,
hasmedia boolean,
sourcefileid VARCHAR(50),
occurrenceID VARCHAR(25),
CONSTRAINT occurrence_pkey PRIMARY KEY (auto_id )
);

CREATE TABLE occurrence_raw (
auto_id INTEGER NOT NULL,
sourcefileid character varying(255) NOT NULL,
acceptedNameUsage TEXT,
acceptedNameUsageID TEXT,
accessRights TEXT,
associatedMedia TEXT,
associatedOccurrences TEXT,
associatedReferences TEXT,
associatedSequences TEXT,
associatedTaxa TEXT,
basisOfRecord TEXT,
bed TEXT,
behavior TEXT,
bibliographicCitation TEXT,
catalogNumber TEXT,
_class TEXT,
collectionCode TEXT,
collectionID TEXT,
continent TEXT,
coordinatePrecision TEXT,
coordinateUncertaintyInMeters TEXT,
country TEXT,
countryCode TEXT,
county TEXT,
dataGeneralizations TEXT,
datasetID TEXT,
datasetName TEXT,
dateIdentified TEXT,
day TEXT,
decimalLatitude TEXT,
decimalLongitude TEXT,
disposition TEXT,
dynamicProperties TEXT,
earliestAgeOrLowestStage TEXT,
earliestEonOrLowestEonothem TEXT,
earliestEpochOrLowestSeries TEXT,
earliestEraOrLowestErathem TEXT,
earliestPeriodOrLowestSystem TEXT,
endDayOfYear TEXT,
establishmentMeans TEXT,
eventDate TEXT,
eventID TEXT,
eventRemarks TEXT,
eventTime TEXT,
family TEXT,
fieldNotes TEXT,
fieldNumber TEXT,
footprintSpatialFit TEXT,
footprintSRS TEXT,
footprintWKT TEXT,
formation TEXT,
genus TEXT,
geodeticDatum TEXT,
geologicalContextID TEXT,
georeferencedBy TEXT,
georeferencedDate TEXT,
georeferenceProtocol TEXT,
georeferenceRemarks TEXT,
georeferenceSources TEXT,
georeferenceVerificationStatus TEXT,
_group TEXT,
habitat TEXT,
higherClassification TEXT,
higherGeography TEXT,
higherGeographyID TEXT,
highestBiostratigraphicZone TEXT,
identificationID TEXT,
identificationQualifier TEXT,
identificationReferences TEXT,
identificationRemarks TEXT,
identificationVerificationStatus TEXT,
identifiedBy TEXT,
individualCount TEXT,
individualID TEXT,
informationWithheld TEXT,
infraspecificEpithet TEXT,
institutionCode TEXT,
institutionID TEXT,
island TEXT,
islandGroup TEXT,
kingdom TEXT,
language TEXT,
latestAgeOrHighestStage TEXT,
latestEonOrHighestEonothem TEXT,
latestEpochOrHighestSeries TEXT,
latestEraOrHighestErathem TEXT,
latestPeriodOrHighestSystem TEXT,
lifeStage TEXT,
lithostratigraphicTerms TEXT,
locality TEXT,
locationAccordingTo TEXT,
locationID TEXT,
locationRemarks TEXT,
lowestBiostratigraphicZone TEXT,
maximumDepthInMeters TEXT,
maximumDistanceAboveSurfaceInMeters TEXT,
maximumElevationInMeters TEXT,
member TEXT,
minimumDepthInMeters TEXT,
minimumDistanceAboveSurfaceInMeters TEXT,
minimumElevationInMeters TEXT,
modified TEXT,
month TEXT,
municipality TEXT,
nameAccordingTo TEXT,
nameAccordingToID TEXT,
namePublishedIn TEXT,
namePublishedInID TEXT,
namePublishedInYear TEXT,
nomenclaturalCode TEXT,
nomenclaturalStatus TEXT,
occurrenceID TEXT,
occurrenceRemarks TEXT,
occurrenceStatus TEXT,
_order TEXT,
originalNameUsage TEXT,
originalNameUsageID TEXT,
otherCatalogNumbers TEXT,
ownerInstitutionCode TEXT,
parentNameUsage TEXT,
parentNameUsageID TEXT,
phylum TEXT,
pointRadiusSpatialFit TEXT,
preparations TEXT,
previousIdentifications TEXT,
recordedBy TEXT,
recordNumber TEXT,
_references TEXT,
reproductiveCondition TEXT,
rights TEXT,
rightsHolder TEXT,
samplingEffort TEXT,
samplingProtocol TEXT,
scientificName TEXT,
scientificNameAuthorship TEXT,
scientificNameID TEXT,
sex TEXT,
specificEpithet TEXT,
startDayOfYear TEXT,
stateProvince TEXT,
subgenus TEXT,
taxonConceptID TEXT,
taxonID TEXT,
taxonomicStatus TEXT,
taxonRank TEXT,
taxonRemarks TEXT,
type TEXT,
typeStatus TEXT,
verbatimCoordinates TEXT,
verbatimCoordinateSystem TEXT,
verbatimDepth TEXT,
verbatimElevation TEXT,
verbatimEventDate TEXT,
verbatimLatitude TEXT,
verbatimLocality TEXT,
verbatimLongitude TEXT,
verbatimSRS TEXT,
verbatimTaxonRank TEXT,
vernacularName TEXT,
waterBody TEXT,
year TEXT,
CONSTRAINT occurrence_raw_pkey PRIMARY KEY (auto_id ),
CONSTRAINT occurrence_raw_id_sourcefileid_key UNIQUE (occurrenceID , sourcefileid )
);


CREATE SEQUENCE unique_values_id_seq;
CREATE TABLE unique_values
(
  id integer DEFAULT nextval('unique_values_id_seq') NOT NULL,
  key character varying(255) NOT NULL,
  occurrence_count integer NOT NULL,
  value character varying(255) NOT NULL,
  unaccented_value character varying(255),
  CONSTRAINT unique_values_pkey PRIMARY KEY (id )
);

CREATE SEQUENCE download_log_id_seq;
CREATE TABLE download_log
(
  id integer DEFAULT nextval('download_log_id_seq') NOT NULL,
  event_date timestamp,
  search_criteria text,
  number_of_records integer,
  email character varying(200),
  CONSTRAINT download_log_pkey PRIMARY KEY (id )
);