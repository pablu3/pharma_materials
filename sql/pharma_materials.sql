SELECT * FROM information_schema.columns 
WHERE table_name = 'pharma_materials';

-- camel case column names had to be changed to correct format
ALTER TABLE pharma_materials 
RENAME COLUMN "nazwaProduktu" TO nazwa_produktu;

ALTER TABLE pharma_materials 
RENAME COLUMN "rodzajPreparatu" TO rodzaj_preparatu;

ALTER TABLE pharma_materials 
RENAME COLUMN "nazwaPowszechnieStosowana" TO nazwa_powszechna;

ALTER TABLE pharma_materials 
RENAME COLUMN "nazwaPoprzedniaProduktu" TO nazwa_poprzednia;

ALTER TABLE pharma_materials
RENAME COLUMN "nazwaPostaciFarmaceutycznej" TO postac_farmaceutyczna;
	
ALTER TABLE pharma_materials 
RENAME COLUMN "podmiotOdpowiedzialny" TO podmiot_odpowiedzialny;
	
ALTER TABLE pharma_materials 
RENAME COLUMN "typProcedury" TO typ_procedury;
	
ALTER TABLE pharma_materials 
RENAME COLUMN "numerPozwolenia" TO numer_pozwolenia;
	
ALTER TABLE pharma_materials 
RENAME COLUMN "waznoscPozwolenia" TO waznosc_pozwolenia;


-- PK
ALTER TABLE pharma_materials 
ADD PRIMARY KEY (id);