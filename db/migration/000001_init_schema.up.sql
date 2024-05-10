CREATE TABLE "users" (
  "id" varchar PRIMARY KEY,
  "email" varchar UNIQUE,
  "password" varchar
);

CREATE TABLE "user_profile" (
  "first_name" varchar,
  "last_name" varchar,
  "id" varchar PRIMARY KEY,
  "dob" date,
  "gender" char[1]
);

ALTER TABLE "user_profile" ADD FOREIGN KEY ("id") REFERENCES "users" ("id");
