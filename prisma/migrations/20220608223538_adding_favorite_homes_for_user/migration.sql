-- CreateTable
CREATE TABLE "_favoritesHome" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_favoritesHome_AB_unique" ON "_favoritesHome"("A", "B");

-- CreateIndex
CREATE INDEX "_favoritesHome_B_index" ON "_favoritesHome"("B");

-- AddForeignKey
ALTER TABLE "_favoritesHome" ADD CONSTRAINT "_favoritesHome_A_fkey" FOREIGN KEY ("A") REFERENCES "Home"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_favoritesHome" ADD CONSTRAINT "_favoritesHome_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
