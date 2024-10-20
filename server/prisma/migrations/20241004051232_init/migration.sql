/*
  Warnings:

  - You are about to drop the column `test` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `authouUserId` on the `Task` table. All the data in the column will be lost.
  - Added the required column `text` to the `Comment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `authorUserId` to the `Task` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Task" DROP CONSTRAINT "Task_authouUserId_fkey";

-- AlterTable
ALTER TABLE "Comment" DROP COLUMN "test",
ADD COLUMN     "text" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Task" DROP COLUMN "authouUserId",
ADD COLUMN     "authorUserId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_authorUserId_fkey" FOREIGN KEY ("authorUserId") REFERENCES "User"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;
