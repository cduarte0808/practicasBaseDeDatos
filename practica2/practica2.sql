CREATE database fabricaCerveza;
use fabricaCerveza;
create table categoriaCerveza (IdCategoria INT AUTO_INCREMENT,
					nombreCategoria VARCHAR(100),
					PRIMARY KEY (IdCategoria)
					);	
create table tipoCategoria (IdTipoCategoria INT AUTO_INCREMENT,
					nombreTipoCategoria VARCHAR(100),
					PRIMARY KEY (IdTipoCategoria)
					);	
create table categoriaC_Tipo (IdCategoria INT,
							  IdTipoCategoria INT,
							  FOREIGN KEY (IdCategoria) REFERENCES categoriaCerveza(IdCategoria),
							  FOREIGN KEY (IdTipoCategoria) REFERENCES tipoCategoria(IdTipoCategoria),
							  PRIMARY KEY (IdCategoria,IdTipoCategoria)
					);
create table cerveza (IdCerveza INT AUTO_INCREMENT,
					  nombreCerveza VARCHAR(100),
                      IdCategoria INT,
                      PRIMARY KEY (IdCerveza),
					  FOREIGN KEY (IdCategoria) REFERENCES categoriaCerveza(IdCategoria) 
					);	
create table materiaPrima (IdMateriaPrima INT AUTO_INCREMENT,
					nombreMateriaPrima VARCHAR(100),
					PRIMARY KEY (IdMateriaPrima)
					);	 
create table cerveza_materiaPrima (IdCerveza INT,
							  IdMateriaPrima INT,
							  FOREIGN KEY (IdCerveza) REFERENCES cerveza(IdCerveza),
							  FOREIGN KEY (IdMateriaPrima) REFERENCES materiaPrima(IdMateriaPrima),
							  PRIMARY KEY (IdCerveza,IdMateriaPrima)
					);       
/*inserts categoriaCerveza*/
insert into categoriaCerveza (nombreCategoria) values('Lagers');      
insert into categoriaCerveza (nombreCategoria) values('Ales'); 
insert into categoriaCerveza (nombreCategoria) values('Dorada'); 

/*inserts tipoCategoria*/
insert into tipoCategoria (nombreTipoCategoria) values ('Dark');
insert into tipoCategoria (nombreTipoCategoria) values ('Pale');
insert into tipoCategoria (nombreTipoCategoria) values ('Bocks');
insert into tipoCategoria (nombreTipoCategoria) values ('Stouts');
insert into tipoCategoria (nombreTipoCategoria) values ('Porters');
insert into tipoCategoria (nombreTipoCategoria) values ('Belgians');
insert into tipoCategoria (nombreTipoCategoria) values ('Sours');

/*inserts tipoCategoria*/
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (1,1);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (1,2);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (1,3);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (2,4);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (2,5);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (2,6);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (2,7);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (2,2);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (3,2);
insert into categoriaC_Tipo (IdCategoria,IdTipoCategoria) values (3,7);

/*inserts cerveza*/
insert into cerveza (nombreCerveza,IdCategoria) values ('Aguila',1);
insert into cerveza (nombreCerveza,IdCategoria) values ('Costeña',2);
insert into cerveza (nombreCerveza,IdCategoria) values ('Club Colombia',3);

/*inserts materiaPrima*/
insert into materiaPrima (nombreMateriaPrima) values ('Cebada');
insert into materiaPrima (nombreMateriaPrima) values ('Agua');
insert into materiaPrima (nombreMateriaPrima) values ('Colorantes');
insert into materiaPrima (nombreMateriaPrima) values ('Lupulo');

/*inserts cerveza_materiaPrima*/
insert into cerveza_materiaPrima (IdCerveza,IdMateriaPrima) values (1,1);
insert into cerveza_materiaPrima (IdCerveza,IdMateriaPrima) values (1,2);
insert into cerveza_materiaPrima (IdCerveza,IdMateriaPrima) values (2,2);
insert into cerveza_materiaPrima (IdCerveza,IdMateriaPrima) values (2,4);
insert into cerveza_materiaPrima (IdCerveza,IdMateriaPrima) values (3,1);
insert into cerveza_materiaPrima (IdCerveza,IdMateriaPrima) values (3,2);
insert into cerveza_materiaPrima (IdCerveza,IdMateriaPrima) values (3,3);

/*querys de revisión*/                      
select * from categoriaCerveza;
select * from tipoCategoria;
select * from categoriaC_Tipo;
select * from cerveza;
select * from materiaPrima;
select * from cerveza_materiaPrima;


                    