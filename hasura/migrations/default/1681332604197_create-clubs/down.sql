
DROP TABLE "public"."player_team";

DROP TABLE "public"."player";

comment on table "public"."team" is NULL;

alter table "public"."team" drop constraint "team_club_id_fkey";

alter table "public"."team" drop constraint "team_season_id_fkey";

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."team" add column "club_id" uuid
--  not null;

alter table "public"."team" alter column "season_id" drop not null;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."team" add column "season_id" uuid
--  null;

DROP TABLE "public"."season";

DROP TABLE "public"."club";

DROP TABLE "public"."team";
