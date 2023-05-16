-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Morbidity_df" (
    "RespondentID" int   NOT NULL,
    "HeartDisease" boolean   NOT NULL,
    "Stroke" boolean   NOT NULL,
    "DifficultyWalking" boolean   NOT NULL,
    "Diabetes" varchar(50)   NOT NULL,
    "Asthma" boolean   NOT NULL,
    "KidneyDisease" boolean   NOT NULL,
    "SkinCancer" boolean   NOT NULL,
    CONSTRAINT "pk_Morbidity_df" PRIMARY KEY (
        "RespondentID"
     )
);

CREATE TABLE "Demographics_df" (
    "RespondentID" int   NOT NULL,
    "Sex" varchar(20)   NOT NULL,
    "AgeRange" varchar(50)   NOT NULL,
    "Race" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Demographics_df" PRIMARY KEY (
        "RespondentID"
     )
);

CREATE TABLE "HealthMetrics_df" (
    "RespondentID" int   NOT NULL,
    "BMI" numeric(4,2)   NOT NULL,
    "Smoking" boolean   NOT NULL,
    "AlcoholDrinking" boolean   NOT NULL,
    "HelathyPhysicalDays" int   NOT NULL,
    "HealthyMentalDays" int   NOT NULL,
    "PhysicalActivity" boolean   NOT NULL,
    "GeneralHealth" varchar(20)   NOT NULL,
    "SleepHours" int   NOT NULL,
    CONSTRAINT "pk_HealthMetrics_df" PRIMARY KEY (
        "RespondentID"
     )
);

ALTER TABLE "Morbidity_df" ADD CONSTRAINT "fk_Morbidity_df_RespondentID" FOREIGN KEY("RespondentID")
REFERENCES "Demographics_df" ("RespondentID");

ALTER TABLE "Demographics_df" ADD CONSTRAINT "fk_Demographics_df_RespondentID" FOREIGN KEY("RespondentID")
REFERENCES "HealthMetrics_df" ("RespondentID");

ALTER TABLE "HealthMetrics_df" ADD CONSTRAINT "fk_HealthMetrics_df_RespondentID" FOREIGN KEY("RespondentID")
REFERENCES "Morbidity_df" ("RespondentID");

