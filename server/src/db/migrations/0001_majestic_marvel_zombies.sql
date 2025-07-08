CREATE TABLE "questions" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"roomid" uuid NOT NULL,
	"question" text NOT NULL,
	"answer" text,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
ALTER TABLE "questions" ADD CONSTRAINT "questions_roomid_rooms_id_fk" FOREIGN KEY ("roomid") REFERENCES "public"."rooms"("id") ON DELETE no action ON UPDATE no action;