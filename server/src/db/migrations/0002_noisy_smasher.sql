ALTER TABLE "questions" RENAME COLUMN "roomid" TO "room_id";--> statement-breakpoint
ALTER TABLE "questions" DROP CONSTRAINT "questions_roomid_rooms_id_fk";
--> statement-breakpoint
ALTER TABLE "questions" ADD CONSTRAINT "questions_room_id_rooms_id_fk" FOREIGN KEY ("room_id") REFERENCES "public"."rooms"("id") ON DELETE no action ON UPDATE no action;