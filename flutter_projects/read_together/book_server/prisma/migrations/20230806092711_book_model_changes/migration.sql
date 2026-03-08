/*
  Warnings:

  - The `datetime` column on the `public.book` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to drop the column `isSeller` on the `public.user` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "public, auth"."public.book" ALTER COLUMN "url" DROP NOT NULL,
ALTER COLUMN "isbn" DROP NOT NULL,
DROP COLUMN "datetime",
ADD COLUMN     "datetime" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "salePrice" DROP NOT NULL,
ALTER COLUMN "status" SET DEFAULT 'available';

-- AlterTable
ALTER TABLE "public, auth"."public.user" DROP COLUMN "isSeller",
ADD COLUMN     "role" TEXT NOT NULL DEFAULT 'user',
ALTER COLUMN "wishList" SET DEFAULT ARRAY[]::TEXT[],
ALTER COLUMN "readList" SET DEFAULT ARRAY[]::TEXT[];
