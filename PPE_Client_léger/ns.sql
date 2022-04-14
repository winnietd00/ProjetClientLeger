DROP database IF EXISTS ns;
Create database ns;
use ns;


DROP TABLE IF EXISTS proprietaire;
CREATE TABLE IF NOT EXISTS proprietaire (
	idPro int(10) NOT NULL AUTO_INCREMENT,
	prenomp varchar(20) NOT NULL,
	nomp varchar(20)NOT NULL,
	agep int (3) NOT NULL,
	numpro int(10)NOT NULL,
	adressep varchar(50) NOT NULL,
	paysp varchar(50) NOT NULL,
	villep varchar(50) NOT NULL,
	cpp char (5) NOT NULL,
	PRIMARY KEY(idPro)
	)ENGINE=innodb DEFAULT CHARSET=latin1;


    DROP TABLE IF EXISTS logements;
	CREATE TABLE IF NOT EXISTS logements (
		idLog int (20) NOT NULL AUTO_INCREMENT,
		typelogl varchar(50)NOT NULL,  
		adressel varchar(50)NOT NULL,
		cpl char(5)NOT NULL,
		villel varchar(50)NOT NULL,
		paysl varchar(50)NOT NULL,
		PRIMARY KEY(idLog)
	    )ENGINE=innodb DEFAULT CHARSET=latin1;
	  alter table logements
	  add foreign key (idConpro) references contratsproprio(idConpro),
	  add foreign key(idRese)references reservation(idRese);


	DROP TABLE IF EXISTS client;
	CREATE TABLE IF NOT EXISTS client (
		idCli int(15) NOT NULL AUTO_INCREMENT,
		nomc varchar (30) NOT NULL,
		prenomc varchar (30) NOT NULL,
		telc int (10)NOT NULL,
		agec int(3) NOT NULL,
		emailc varchar(50)NOT NULL,
		PRIMARY KEY (idCli) 
	   )ENGINE=innodb DEFAULT CHARSET=latin1;



	DROP TABLE IF EXISTS reservation;
	CREATE TABLE IF NOT EXISTS reservation (
		idRese int(15)NOT NULL AUTO_INCREMENT,
		dateArr datetime(6) NOT NULL, 
		dateRet datetime(6)NOT NULL,
		etat_rese varchar(10)NOT NULL,
		typePai varchar(20)NOT NULL,
		PRIMARY KEY(idRese)
	   )ENGINE=innodb DEFAULT CHARSET=latin1;
	    alter table reservation
	  add foreign key (idsai) references saison(idsai),
	  add foreign key(idCli) references client(idCli);


	DROP TABLE IF EXISTS destination;
	CREATE TABLE IF NOT EXISTS destination(
		idDesti int(15) NOT NULL AUTO_INCREMENT,
		villesd varchar(50)NOT NULL,
		PRIMARY KEY(idDesti)
	   )ENGINE=innodb DEFAULT CHARSET=latin1;
	  alter table destination
	  add foreign key (idLog) references logement(idLog);

	DROP TABLE IF EXISTS commentaire;
	CREATE TABLE IF NOT EXISTS commentaire(
		idCom int (15) NOT NULL,
		avis varchar(	500) NOT NULL,
		titAvi varchar (50) NOT NULL,
		identi int (15)NOT NULL,
		PRIMARY KEY (idCom)
	    )ENGINE=innodb DEFAULT CHARSET=latin1;
	    alter table commentaire
	  add foreign key(idCli) references client(idCli);

	DROP TABLE IF EXISTS saison;
	CREATE TABLE IF NOT EXISTS saison(
		idsai int (15) NOT NULL,
		numsai int(20) NOT NULL,
		pours int(3) NOT NULL,
		PRIMARY KEY(idsai)
		)ENGINE=innodb DEFAULT CHARSET=latin1;


	DROP TABLE IF EXISTS contratspro;
	CREATE TABLE IF NOT EXISTS contratspro(
		idConpro int(15) NOT NULL,
		numc int(20)NOT NULL,
		debutc datetime(6) NOT NULL,
		finc datetime(6)NOT NULL,
		PRIMARY KEY(idCon)
	   )ENGINE=innodb DEFAULT CHARSET=latin1;
	   alter table contratsproprio
	  add foreign key(idPro) references proprietaire(idPro);

	DROP TABLE IF EXISTS contratsloc;
	CREATE TABLE IF NOT EXISTS contratsloc(
		idConloc int(15) NOT NULL,
		numl int(20)NOT NULL,
		debutl datetime(6) NOT NULL,
		finl datetime(6)NOT NULL,
		PRIMARY KEY(idConloc)
	   )ENGINE=innodb DEFAULT CHARSET=latin1;
	  alter table contratsloc
	  add foreign key(idRese) references reservation(idRese);
	  








		



		 






;