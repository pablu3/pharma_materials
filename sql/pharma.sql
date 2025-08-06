-- all column lengths were based on df[column_name].str.len().max()
CREATE TABLE pharma_materials (
	id INT PRIMARY KEY,
	nazwa_produktu VARCHAR(69),
	rodzaj_preparatu VARCHAR(6),
	nazwa_powszechna VARCHAR(71),
	moc VARCHAR(170),
	nazwa_postaci_farm VARCHAR(23),
	podmiot_odpowiedzialny VARCHAR(73),
	typ_procedury VARCHAR(3),
	numer_pozwolenia VARCHAR(12),
	waznosc_pozwolenia DATE
);