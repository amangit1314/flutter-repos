-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "public, auth";

-- CreateTable
CREATE TABLE "public, auth"."public.auth" (
    "email" TEXT NOT NULL,
    "uid" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "username" TEXT NOT NULL,

    CONSTRAINT "public.auth_pkey" PRIMARY KEY ("email")
);

-- CreateTable
CREATE TABLE "public, auth"."public.user" (
    "uid" TEXT NOT NULL,
    "username" TEXT,
    "email" TEXT NOT NULL,
    "number" TEXT NOT NULL,
    "profileImage" TEXT,
    "createdOrUpdatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "wishList" TEXT[],
    "readList" TEXT[],
    "isSeller" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "public.user_pkey" PRIMARY KEY ("uid")
);

-- CreateTable
CREATE TABLE "public, auth"."public.address" (
    "id" TEXT NOT NULL,
    "uid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "contactNumber" TEXT NOT NULL,
    "createdOrUpdatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "userUid" TEXT,

    CONSTRAINT "public.address_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public, auth"."public.book" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "author" TEXT NOT NULL,
    "publisher" TEXT NOT NULL,
    "sellerId" TEXT NOT NULL,
    "thumbnail" TEXT NOT NULL,
    "contents" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "isbn" TEXT NOT NULL,
    "datetime" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "salePrice" INTEGER NOT NULL,
    "status" TEXT NOT NULL,
    "categories" TEXT[],
    "createdOrUpdatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "public.book_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public, auth"."public.review" (
    "id" TEXT NOT NULL,
    "uid" TEXT NOT NULL,
    "bookId" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "reviewComment" TEXT NOT NULL,
    "rating" INTEGER NOT NULL,
    "createdOrUpdatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "public.review_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public, auth"."public.payment" (
    "id" TEXT NOT NULL,
    "uid" TEXT NOT NULL,
    "bookId" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "thumbnail" TEXT NOT NULL,
    "quantity" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "createdOrUpdatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "public.payment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public, auth"."public.purchaseHistory" (
    "id" TEXT NOT NULL,
    "uid" TEXT NOT NULL,
    "bookId" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "thumbnail" TEXT NOT NULL,
    "quantity" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "isFromWishList" BOOLEAN NOT NULL,
    "createdOrUpdatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "public.purchaseHistory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public, auth"."public.readList" (
    "uid" TEXT NOT NULL,
    "books" TEXT[],

    CONSTRAINT "public.readList_pkey" PRIMARY KEY ("uid")
);

-- CreateTable
CREATE TABLE "public, auth"."public.wishList" (
    "uid" TEXT NOT NULL,
    "books" TEXT[],

    CONSTRAINT "public.wishList_pkey" PRIMARY KEY ("uid")
);

-- CreateTable
CREATE TABLE "public, auth"."public.seller" (
    "id" TEXT NOT NULL,
    "uid" TEXT NOT NULL,
    "bookId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "contactNumber" TEXT NOT NULL,
    "createdOrUpdatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "public.seller_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "public.auth_email_key" ON "public, auth"."public.auth"("email");

-- CreateIndex
CREATE UNIQUE INDEX "public.auth_uid_key" ON "public, auth"."public.auth"("uid");

-- CreateIndex
CREATE UNIQUE INDEX "public.user_email_key" ON "public, auth"."public.user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "public.user_number_key" ON "public, auth"."public.user"("number");

-- AddForeignKey
ALTER TABLE "public, auth"."public.address" ADD CONSTRAINT "public.address_userUid_fkey" FOREIGN KEY ("userUid") REFERENCES "public, auth"."public.user"("uid") ON DELETE SET NULL ON UPDATE CASCADE;
