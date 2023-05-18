-- PostgreSQL Final Project Code

-- Creating the three tables in the schema (Demographics_df, Morbidity_df, and HealthMetrics_df)
CREATE TABLE Morbidity_df (
    RespondentID int   NOT NULL,
    HeartDisease boolean   NOT NULL,
    Stroke boolean   NOT NULL,
    DifficultyWalking boolean   NOT NULL,
    Diabetes varchar(50)   NOT NULL,
    Asthma boolean   NOT NULL,
    KidneyDisease boolean   NOT NULL,
    SkinCancer boolean   NOT NULL,
    CONSTRAINT pk_Morbidity_df PRIMARY KEY (
        RespondentID
     )
);

CREATE TABLE Demographics_df (
    RespondentID int   NOT NULL,
    Sex varchar(50)   NOT NULL,
    AgeRange varchar(50)   NOT NULL,
    Race varchar(50)   NOT NULL,
    CONSTRAINT pk_Demographics_df PRIMARY KEY (
        RespondentID
     )
);

CREATE TABLE HealthMetrics_df (
    RespondentID int   NOT NULL,
    BMI numeric(4,2)   NOT NULL,
    Smoking boolean   NOT NULL,
    AlcoholDrinking boolean   NOT NULL,
    HealthyPhysicalDays int   NOT NULL,
    HealthyMentalDays int   NOT NULL,
    PhysicalActivity boolean   NOT NULL,
    GeneralHealth varchar(50)   NOT NULL,
    SleepHours int   NOT NULL,
    CONSTRAINT pk_HealthMetrics_df PRIMARY KEY (
        RespondentID
     )
);

ALTER TABLE Morbidity_df ADD CONSTRAINT fk_Morbidity_df_RespondentID FOREIGN KEY(RespondentID)
REFERENCES Demographics_df (RespondentID);

ALTER TABLE HealthMetrics_df ADD CONSTRAINT fk_HealthMetrics_df_RespondentID FOREIGN KEY(RespondentID)
REFERENCES Demographics_df (RespondentID);

-- Dropping the tables to make corrections
DROP TABLE morbidity_df CASCADE;
DROP TABLE demographics_df CASCADE;
DROP TABLE healthmetrics_df CASCADE;

-- Viewing the tables
SELECT * FROM morbidity_df;
SELECT * FROM demographics_df;
SELECT * FROM healthmetrics_df;

-- Joining the 3 tables (Demographics, Morbidity, and HealthMetrics)
SELECT de.RespondentID,
	de.Sex,
	de.AgeRange,
	de.Race,
	mo.HeartDisease,
	mo.Stroke,
	mo.DifficultyWalking,
	mo.Diabetes,
	mo.Asthma,
	mo.KidneyDisease,
	mo.SkinCancer,
	hm.BMI,
	hm.Smoking,
	hm.AlcoholDrinking,
	hm.HealthyPhysicalDays,
	hm.HealthyMentalDays,
	hm.PhysicalActivity,
	hm.GeneralHealth,
	hm.SleepHours
INTO heart_disease_final
FROM demographics_df as de
LEFT JOIN morbidity_df as mo
ON de.RespondentID = mo.RespondentID
LEFT JOIN healthmetrics_df as hm
ON hm.RespondentID = mo.RespondentID;

-- View the merged tables
SELECT * FROM heart_disease_final;