/*
  Warnings:

  - You are about to drop the column `favoratedById` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the `userPrefrences` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_favoratedById_fkey";

-- DropForeignKey
ALTER TABLE "userPrefrences" DROP CONSTRAINT "userPrefrences_userId_fkey";

-- AlterTable
ALTER TABLE "Post" DROP COLUMN "favoratedById",
ADD COLUMN     "favoritesById" TEXT;

-- DropTable
DROP TABLE "userPrefrences";

-- CreateTable
CREATE TABLE "userPreferences" (
    "id" TEXT NOT NULL,
    "emailUpdates" BOOLEAN NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "userPreferences_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "userPreferences" ADD CONSTRAINT "userPreferences_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_favoritesById_fkey" FOREIGN KEY ("favoritesById") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
