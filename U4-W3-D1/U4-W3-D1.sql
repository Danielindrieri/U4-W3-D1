CREATE TABLE Clienti (
    Numero_Cliente SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Anno INTEGER,
    Regione VARCHAR(50) NOT NULL
	);

CREATE TABLE Prodotti (
    Id_prodotto SERIAL PRIMARY KEY,
    Descrizione VARCHAR(50) NOT NULL,
    In_Produzione INTEGER,
    In_Commercio INTEGER,
    Data_Attivazione DATE DEFAULT CURRENT_DATE,
    Data_Disattivazione DATE
);

/*CREATE TABLE Fornitori (
    Numero_Fornitore SERIAL PRIMARY KEY,
    Denominazione VARCHAR(50) NOT NULL,
    Regione_Residenza VARCHAR(50) NOT NULL
);

CREATE TABLE Fatture (
    Numero_Fattura SERIAL PRIMARY KEY,
    Tipologia VARCHAR(50) NOT NULL,
    Importo DECIMAL(10, 2),
    Iva DECIMAL(5, 2),
    Id_Cliente INTEGER REFERENCES Clienti(NumeroCliente),
    Data_Fattura DATE DEFAULT CURRENT_DATE,
    Numero_Fornitore INTEGER REFERENCES Fornitori(NumeroFornitore)
);
*/

INSERT INTO Clienti (Nome, Cognome, Anno, Regione)
VALUES
('Daniel', 'Indrieri', 2001, 'Calabria'),
('Marco', 'Buglione', 2001, 'Calabria'),
('Giulia', 'DeLuca', 1992, 'BolzanoSUD'),
('Achiropita', 'Nazionale', 1968, 'Milano');


INSERT INTO prodotti (Descrizione, InProduzione, InCommercio, DataAttivazione, DataDisattivazione)
VALUES
('Laptop Dell Inspiron 15', 1, 1, '2023-01-01', NULL),
('Desktop HP Pavilion', 1, 1, '2023-02-01', NULL),
('MacBook Pro 14"', 1, 1, '2023-03-10', NULL),
('Chromebook Acer Spin', 1, 1, '2023-04-15', NULL),
('Lenovo ThinkPad X1', 1, 1, '2023-05-20', NULL);


INSERT INTO fornitori (Denominazione, RegioneResidenza)
VALUES
('Dell Technologies', 'Lombardia'),
('HP Italia', 'Lazio'),
('Apple Italia', 'Trentino-Alto Adige'),
('Acer Distribution', 'Veneto'),
('Lenovo Group', 'Emilia-Romagna');


INSERT INTO fatture (Tipologia, Importo, Iva, IdCliente, DataFattura, NumeroFornitore)
VALUES
('Acquisto Laptop Dell', 1200.00, 22.00, 1, '2023-10-05', 1),
('Acquisto Desktop HP', 800.00, 22.00, 2, '2023-11-15', 2),
('Acquisto MacBook Pro', 2500.00, 22.00, 3, '2024-01-20', 3),
('Acquisto Chromebook', 600.00, 22.00, 4, '2024-02-01', 4),
('Acquisto ThinkPad', 1400.00, 22.00, 1, '2024-03-05', 5);

