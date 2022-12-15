create table Filliere
(
	codeFill int(15) primary key,
    nomFill varchar(250)
);



create table stagiare
(
	matricule varchar(250) primary key,
    nom varchar(250),
    prenom varchar(250),
    date_naissance date,
    poids int(15),
    codeFill int(15),
    
    foreign key (codeFill) references Filliere(codeFill)
);



insert into Filliere() 
Values(1 , 'Dev101'),
(2 , 'Dev102'),
(3 , 'Dev201'),
(4 , 'Dev202');

insert into stagiare() 
Values('12b22' , 'younes' , 'zahfouf' , '2004-07-24' , 60 , 2),
('12c22' , 'briere' , 'amine' , '2004-09-21' , 60 , 2),
('12e22' , 'amine' , 'abdelhadi' , '2004-09-21' , 60 , 2),
('12g22' , 'zer' , 'yassine' , '2004-09-21' , 60 , 2),
('12a22' , 'naji' , 'kamal' , '2004-09-21' , 60 , 1),
('12z22' , 'hajoui' , 'omar' , '2004-09-21' , 60 , 3),
('12q22' , 'najemeddin' , 'omar' , '2004-09-21' , 60 , 3);





select * from stagiare 
where nom like 'b%';

select * from stagiare 
where Month(date_naissance) = 9;



select fill.nomFill , count(stg.nom) as nbr_stagiare
from Filliere as fill , stagiare as stg
where fill.codeFill = stg.codeFill
group by fill.codeFill;


select fill.nomFill , count(stg.nom)  as nbr_stagiare 
from Filliere as fill , stagiare as stg
where fill.codeFill = stg.codeFill 
group by fill.codeFill
having nbr_stagiare <= 3;