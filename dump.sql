create database continente;

create table paises(
	id serial PRIMARY KEY,
  nome TEXT
);

create table artistas(
	id serial PRIMARY KEY,
  nome TEXT,
  paises_id INTEGER references paises(id)
);

create table comidas(
	id serial PRIMARY KEY,
  nome TEXT,
  descricao TEXT,
  paises_id INTEGER references paises(id)
);

insert into paises (name)
values ('África do Sul'), ('Angola'), ('Argélia'), ('Benin'), ('Botsuana'),
('Burkina Faso'), ('Burundi'), ('Cabo Verde'), ('Camarões'), ('Chade'),
('Comores'), ('Costa do Marfim'),
('Djibouti'),
('Egito'),
('Eritreia'),
('Essuatíni (Suazilândia)'),
('Etiópia'),
('Gabão'),
('Gâmbia'),
('Gana'),
('Guiné'),
('Guiné-Bissau'),
('Guiné Equatorial'),
('Lesoto'),
('Libéria'),
('Líbia'),
('Madagascar'),
('Malawi'),
('Mali'),
('Marrocos'),
('Maurícia'),
('Mauritânia'),
('Moçambique'),
('Namíbia'),
('Níger'),
('Nigéria'),
('Quênia'),
('República Centro-Africana'),
('República Democrática do Congo (Congo-Kinshasa)'),
('República do Congo (Congo-Brazzaville)'),
('Ruanda'),
('São Tomé e Príncipe'),
('Senegal'),
('Serra Leoa'),
('Seychelles'),
('Somália'),
('Sudão'),
('Sudão do Sul'),
('Tanzânia'),
('Togo'),
('Tunísia'),
('Uganda'),
('Zâmbia'),
('Zimbábue');

INSERT INTO comidas (nome, paises_id)
VALUES 
-- África do Sul (ID 1)
('Bobotie', 1), ('Biltong', 1), ('Boerewors', 1), ('Malva pudding', 1), ('Bunny chow', 1),
-- Angola (ID 2)
('Muamba de galinha', 2), ('Calulu de peixe', 2), ('Funge', 2), ('Feijão de óleo de palma', 2), ('Catatos', 2),
-- Argélia (ID 3)
('Couscous', 3), ('Tajine zitoun', 3), ('Merguez', 3), ('Harira', 3), ('Chakchouka', 3),
-- Benin (ID 4)
('Amiwo', 4), ('Akpan', 4), ('Yovo doko', 4), ('Wagasi', 4), ('Pâte rouge', 4),
-- Botsuana (ID 5)
('Seswaa', 5), ('Bogobe', 5), ('Vetkoek', 5), ('Morogo', 5), ('Pap', 5),
-- Burkina Faso (ID 6)
('Riz gras', 6), ('Tô', 6), ('Poulet bicyclette', 6), ('Babenda', 6), ('Brochettes', 6),
-- Burundi (ID 7)
('Mukeke', 7), ('Brochettes', 7), ('Ndizi', 7), ('Ugali', 7), ('Ibiharage', 7),
-- Cabo Verde (ID 8)
('Cachupa', 8), ('Pastel com diabo dentro', 8), ('Feijoada', 8), ('Bolo de caco', 8), ('Xerém', 8),
-- Camarões (ID 9)
('Ndolé', 9), ('Poulet DG', 9), ('Koki', 9), ('Achu soup', 9), ('Sanga', 9),
-- Chade (ID 10)
('Jarret de boeuf', 10), ('Esh', 10), ('Daraba', 10), ('Brochettes', 10), ('Boule', 10),
-- Comores (ID 11)
('Langouste à la vanille', 11), ('Mkatra foutra', 11), ('Pilaou', 11), ('Rougaille', 11), ('Viande en brochette', 11),
-- Costa do Marfim (ID 12)
('Alloco', 12), ('Kedjenou', 12), ('Attiéké', 12), ('Fufu', 12), ('Placali', 12),
-- Djibouti (ID 13)
('Fah-fah', 13), ('Skoudehkaris', 13), ('Samosa', 13), ('Lahoh', 13), ('Yemeni fish', 13),
-- Egito (ID 14)
('Koshari', 14), ('Ful medames', 14), ('Molokhia', 14), ('Fattah', 14), ('Taameya', 14),
-- Eritreia (ID 15)
('Zigni', 15), ('Injera', 15), ('Alicha', 15), ('Shiro', 15), ('Tsebhi', 15),
-- Essuatíni (ID 16)
('Emasi', 16), ('Sishwala', 16), ('Incwancwa', 16), ('Umncweba', 16), ('Umbhonyo', 16),
-- Etiópia (ID 17)
('Doro wat', 17), ('Injera', 17), ('Tibs', 17), ('Shiro', 17), ('Kitfo', 17),
-- Gabão (ID 18)
('Poulet Nyembwe', 18), ('Brochettes', 18), ('Atanga', 18), ('Nyembwe', 18), ('Saka-saka', 18),
-- Gâmbia (ID 19)
('Domoda', 19), ('Benachin', 19), ('Yassa', 19), ('Afra', 19), ('Chura-gerteh', 19),
-- Gana (ID 20)
('Jollof rice', 20), ('Fufu', 20), ('Banku', 20), ('Kelewele', 20), ('Red-red', 20),
-- Guiné (ID 21)
('Poulet Yassa', 21), ('Fufu', 21), ('Sopa de amendoim', 21), ('Bolo de milho', 21), ('Cassava leaf sauce', 21),
-- Guiné-Bissau (ID 22)
('Caldo de mancarra', 22), ('Arroz com chabéu', 22), ('Yassa', 22), ('Catchupa', 22), ('Bolinhos de arroz', 22),
-- Guiné Equatorial (ID 23)
('Sopa de mandioca', 23), ('Fumbwa', 23), ('Sopa de peixe', 23), ('Sopa de amendoim', 23), ('Banana frita', 23),
-- Lesoto (ID 24)
('Pap-pap', 24), ('Moroho', 24), ('Nyekoe', 24), ('Braai', 24), ('Thopi', 24),
-- Libéria (ID 25)
('Jollof rice', 25), ('Palava sauce', 25), ('Fufu', 25), ('Cassava leaf stew', 25), ('Pepper soup', 25),
-- Líbia (ID 26)
('Couscous', 26), ('Shakshouka', 26), ('Bazin', 26), ('Usban', 26), ('Rishda', 26),
-- Madagascar (ID 27)
('Romazava', 27), ('Ravitoto', 27), ('Lasopy', 27), ('Koba', 27), ('Mofo gasy', 27),
-- Malawi (ID 28)
('Nsima', 28), ('Chambo', 28), ('Usipa', 28), ('Kondowole', 28), ('Kachumbari', 28),
-- Mali (ID 29)
('Tô', 29), ('Jollof rice', 29), ('Tiguadege na', 29), ('Foufou', 29), ('Mafé', 29),
-- Marrocos (ID 30)
('Tagine', 30), ('Couscous', 30), ('Pastilla', 30), ('Harira', 30), ('Chebakia', 30),
-- Maurício (ID 31)
('Dholl puri', 31), ('Rougaille', 31), ('Gateau piment', 31), ('Cari poulet', 31), ('Biryani', 31),
-- Mauritânia (ID 32)
('Thieboudienne', 32), ('Mechoui', 32), ('Cherchem', 32), ('Boule de mil', 32), ('Zrig', 32),
-- Moçambique (ID 33)
('Frango à Zambeziana', 33), ('Matapa', 33), ('Chamuça', 33), ('Pãozinho de canela', 33), ('Caril de camarão', 33),
-- Namíbia (ID 34)
('Kapana', 34), ('Potjiekos', 34), ('Biltong', 34), ('Oshifima', 34), ('Braai', 34),
-- Níger (ID 35)
('Dambou', 35), ('Tô', 35), ('Foufou', 35), ('Chinchinga', 35), ('Jollof rice', 35),
-- Nigéria (ID 36)
('Jollof rice', 36), ('Egusi soup', 36), ('Fufu', 36), ('Moi Moi', 36), ('Suya', 36),
-- Quênia (ID 37)
('Ugali', 37), ('Nyama choma', 37), ('Sukuma wiki', 37), ('Githeri', 37), ('Chapati', 37),
-- República Centro-Africana (ID 38)
('Kanda', 38), ('Saka-saka', 38), ('Fumbwa', 38), ('Brochettes', 38), ('Makongo', 38),
-- República Democrática do Congo (ID 39)
('Saka-saka', 39), ('Moambe', 39), ('Fumbwa', 39), ('Makayabu', 39), ('Liboke', 39),
-- Ruanda (ID 40)
('Ugali', 40), ('Isombe', 40), ('Brochettes', 40), ('Matoke', 40), ('Ubugali', 40),
-- Saara Ocidental (ID 41)
('Couscous', 41), ('Mechoui', 41), ('Tajine', 41), ('Shakshouka', 41), ('Ragout', 41),
-- São Tomé e Príncipe (ID 42)
('Calulu', 42), ('Matata', 42), ('Blabla', 42), ('Feijoada', 42), ('Arroz doce', 42),
-- Senegal (ID 43)
('Thieboudienne', 43), ('Yassa', 43), ('Mafé', 43), ('Lakh', 43), ('Bissap', 43),
-- Seychelles (ID 44)
('Cari coco', 44), ('Rougaille', 44), ('Salmão fumado', 44), ('Peixe grelhado', 44), ('Bolo de mandioca', 44),
-- Serra Leoa (ID 45)
('Groundnut stew', 45), ('Fufu', 45), ('Jollof rice', 45), ('Pepper soup', 45), ('Cassava leaves', 45),
-- Somália (ID 46)
('Canjeero', 46), ('Bariis iskukaris', 46), ('Sambuusa', 46), ('Maraq', 46), ('Lahoh', 46),
-- Sudão (ID 47)
('Ful medames', 47), ('Asida', 47), ('Kisra', 47), ('Molokhia', 47), ('Tamiya', 47),
-- Sudão do Sul (ID 48)
('Kisra', 48), ('Ful sudani', 48), ('Agashe', 48), ('Asida', 48), ('Shaiyah', 48),
-- Tanzânia (ID 49)
('Ugali', 49), ('Nyama choma', 49), ('Sukuma wiki', 49), ('Chipsi mayai', 49), ('Ndizi na nyama', 49),
-- Togo (ID 50)
('Fufu', 50), ('Jollof rice', 50), ('Koklo meme', 50), ('Akpan', 50), ('Ablo', 50),
-- Tunísia (ID 51)
('Couscous', 51), ('Brik', 51), ('Tajine', 51), ('Shakshouka', 51), ('Lablabi', 51),
-- Uganda (ID 52)
('Matoke', 52), ('Luwombo', 52), ('Posho', 52), ('Rolex', 52), ('Sukuma wiki', 52),
-- Zâmbia (ID 53)
('Nshima', 53), ('Ifinkubala', 53), ('Kapenta', 53), ('Chikanda', 53), ('Mopane worms', 53),
-- Zimbábue (ID 54)
('Sadza', 54), ('Nyama', 54), ('Mopane worms', 54), ('Muriwo unedovi', 54), ('Kapenta', 54);


INSERT INTO artistas (nome, paises_id)
VALUES ('Cheb Khaled', 1), ('Souad Massi', 1), ('Hamed El Anka', 1), ('Djamila Bouhired', 1), ('Kamel Messaoudi', 1),
-- Angola (ID 2)
('Bonga', 2), ('Paulo Flores', 2), ('C4 Pedro', 2), ('Yola Semedo', 2), ('Eduardo Alexandre', 2),
-- Benim (ID 3)
('Angélique Kidjo', 3), ('Stan Tohon', 3), ('Gnonnas Pedro', 3), ('Sagbohan Danialou', 3), ('Zeynab Habib', 3),
-- Botsuana (ID 4)
('Vee Mampeezy', 4), ('Charma Gal', 4), ('Scar', 4), ('Thabang Garogwe', 4), ('ATI', 4),
-- Burkina Faso (ID 5)
('Sana Bob', 5), ('Amity Meria', 5), ('Smockey', 5), ('Amety Meria', 5), ('Alif Naaba', 5),
-- Burundi (ID 6)
('Khadja Nin', 6), ('Big Fizzo', 6), ('Sat-B', 6), ('Lolilo', 6), ('Kidum', 6),
-- Cabo Verde (ID 7)
('Cesária Évora', 7), ('Mayra Andrade', 7), ('Tito Paris', 7), ('Ildo Lobo', 7), ('Nancy Vieira', 7),
-- Camarões (ID 8)
('Richard Bona', 8), ('Manu Dibango', 8), ('Charlotte Dipanda', 8), ('Petit Pays', 8), ('Eko Roosevelt', 8),
-- Chade (ID 9)
('Mounira Mitchala', 9), ('Akal Djidji', 9), ('Tchaya Gaga', 9), ('Soul Bangs', 9), ('Dounia', 9),
-- Comores (ID 10)
('Nawal', 10), ('Maalesh', 10), ('Zeze', 10), ('Chebli Msa', 10), ('Ahamada Smis', 10),
-- Costa do Marfim (ID 11)
('Alpha Blondy', 11), ('Magic System', 11), ('Tiken Jah Fakoly', 11), ('Meiway', 11), ('Aicha Koné', 11),
-- Djibouti (ID 12)
('Amina Abdillahi', 12), ('Abdourahman Waberi', 12), ('Hibo Nura', 12), ('Fadumo Qasim', 12), ('Ahmed Jama', 12),
-- Egito (ID 13)
('Umm Kulthum', 13), ('Amr Diab', 13), ('Mohamed Mounir', 13), ('Abdel Halim Hafez', 13), ('Sherine Abdel-Wahab', 13),
-- Eritreia (ID 14)
('Helen Meles', 14), ('Bereket Mengisteab', 14), ('Awel Said', 14), ('Elsa Kidane', 14), ('Tewelde Redda', 14),
-- Essuatíni (ID 15)
('Zaza', 15), ('Sands', 15), ('Bholoja', 15), ('Msimisi', 15), ('Lomkhosi Mdluli', 15),
-- Etiópia (ID 16)
('Mulatu Astatke', 16), ('Gigi', 16), ('Teddy Afro', 16), ('Aster Aweke', 16), ('Mahmoud Ahmed', 16),
-- Gabão (ID 17)
('Pierre-Claver Akendengué', 17), ('Annie-Flore Batchiellilys', 17), ('Patience Dabany', 17), ('ShanL', 17), ('Ba Ponga', 17),
-- Gâmbia (ID 18)
('Foday Musa Suso', 18), ('Jaliba Kuyateh', 18), ('Sona Jobarteh', 18), ('ST Brikama Boyo', 18), ('Bubacarr Jobe', 18),
-- Gana (ID 19)
('Sarkodie', 19), ('Shatta Wale', 19), ('Stonebwoy', 19), ('E.T. Mensah', 19), ('Efya', 19),
-- Guiné (ID 20)
('Mory Kanté', 20), ('Sékouba Bambino', 20), ('Aicha Koné', 20), ('Kandia Kouyaté', 20), ('Alpha Yaya Diallo', 20),
-- Guiné-Bissau (ID 21)
('Manecas Costa', 21), ('Patche di Rima', 21), ('Adriano Ferreira', 21), ('Dany Silva', 21), ('Naná Vasconcelos', 21),
-- Guiné Equatorial (ID 22)
('Anfibio', 22), ('Nelida Karr', 22), ('Lupita Nyongo', 22), ('Ángel Ndong', 22), ('Nico El Loco', 22),
-- Lesoto (ID 23)
('Famole', 23), ('Kommanda Obbs', 23), ('Mantsa', 23), ('Maleh', 23), ('Tšepo Tšola', 23),
-- Libéria (ID 24)
('Cyrus da Virus', 24), ('Takun J', 24), ('DenG', 24), ('Christoph the Change', 24), ('Kobazzie', 24),
-- Líbia (ID 25)
('Ahmed Fakroun', 25), ('Hamada Almarzuqi', 25), ('Mohammed Hassan', 25), ('Salem Al Rabee', 25), ('Fayez Al Saeed', 25),
-- Madagascar (ID 26)
('Gary', 26), ('Rossy', 26), ('Erick Manana', 26), ('Tarika', 26), ('Jaojoby', 26),
-- Malawi (ID 27)
('Lucius Banda', 27), ('Faith Mussa', 27), ('Tay Grin', 27), ('Ethel Kamwendo-Banda', 27), ('Wendy Harawa', 27),
-- Mali (ID 28)
('Salif Keita', 28), ('Oumou Sangaré', 28), ('Ali Farka Touré', 28), ('Rokia Traoré', 28), ('Toumani Diabaté', 28),
-- Marrocos (ID 29)
('Saad Lamjarred', 29), ('Douzi', 29), ('Abdelwahab Doukkali', 29), ('Samira Said', 29), ('Hatim Ammor', 29),
-- Mauritânia (ID 30)
('Malouma', 30), ('Dimi Mint Abba', 30), ('Noura Mint Seymali', 30), ('Tidinit Band', 30), ('Ahmedou Ahmed Lowla', 30),
-- Maurícia (ID 31)
('Kaya', 31), ('Linzy Bacbotte', 31), ('Eric Triton', 31), ('Ziakazom', 31), ('Tropicadéro', 31),
-- Moçambique (ID 32)
('Marrabenta Stars', 32), ('Stewart Sukuma', 32), ('Dilon Djindji', 32), ('Ghorwane', 32), ('Moreira Chonguiça', 32),
-- Namíbia (ID 33)
('Gazza', 33), ('The Dogg', 33), ('EES', 33), ('Shishani', 33), ('Top Cheri', 33),
-- Níger (ID 34)
('Bombino', 34), ('Mamar Kassey', 34), ('Etran Finatawa', 34), ('Tal National', 34), ('Toumast', 34),
-- Nigéria (ID 35)
('Fela Kuti', 35), ('Wizkid', 35), ('Burna Boy', 35), ('Tiwa Savage', 35), ('Davido', 35),
-- República Centro-Africana (ID 36)
('OZagué', 36), ('Bibi Tanga', 36), ('Idylle Mamba', 36), ('Corneille', 36), ('DJ Mathey', 36),
-- República do Congo (ID 37)
('Papa Wemba', 37), ('Fally Ipupa', 37), ('Koffi Olomidé', 37), ('Ferre Gola', 37), ('Werrason', 37),
-- Ruanda (ID 38)
('Meddy', 38), ('The Ben', 38), ('Knowless Butera', 38), ('Bruce Melodie', 38), ('Charly na Nina', 38),
-- Senegal (ID 39)
('Youssou Dour', 39), ('Ismaël Lô', 39), ('Baaba Maal', 39), ('Cheikh Lô', 39), ('Viviane Chidid', 39),
-- Serra Leoa (ID 40)
('Emmerson Bockarie', 40), ('Neneh Cherry', 40), ('Steady Bongo', 40), ('Kao Denero', 40), ('Drizilik', 40),
-- Seychelles (ID 41)
('Jany De Letourdi', 41), ('Jean-Marc Volcy', 41), ('Patrick Victor', 41), ('Joseph Sinon', 41), ('Sandra Esparon', 41),
-- Somália (ID 42)
('naan', 42), ('Maryam Mursal', 42), ('Hassan Aden Samatar', 42), ('Ahmed Mooge', 42), ('Waayaha Cusub', 42),
-- África do Sul (ID 43)
('Miriam Makeba', 43), ('Hugh Masekela', 43), ('Black Coffee', 43), ('Brenda Fassie', 43), ('Ladysmith Black Mambazo', 43),
-- Sudão (ID 44)
('Abdel Gadir Salim', 44), ('Alsarah', 44), ('Mohammed Wardi', 44), ('Rasha Sheikh', 44), ('Nancy Ajram', 44),
-- Sudão do Sul (ID 45)
('Emmanuel Jal', 45), ('Silver X', 45), ('Lam Tungwar', 45), ('Yaba Angelosi', 45), ('Mary Boyoi', 45),
-- Tanzânia (ID 46)
('Diamond Platnumz', 46), ('Ali Kiba', 46), ('Lady Jaydee', 46), ('Rayvanny', 46), ('Harmonize', 46),
-- Togo (ID 47)
('King Mensah', 47), ('Afia Mala', 47), ('Bella Bellow', 47), ('Santrinos Raphael', 47), ('Toofan', 47),
-- Tunísia (ID 48)
('Latifa', 48), ('Saber Rebai', 48), ('Anouar Brahem', 48), ('Emel Mathlouthi', 48), ('El General', 48),
-- Uganda (ID 49)
('Eddy Kenzo', 49), ('Jose Chameleone', 49), ('Bobi Wine', 49), ('Sheebah Karungi', 49), ('Radio and Weasel', 49),
-- Zâmbia (ID 50)
('Pompi', 50), ('Slapdee', 50), ('Macky 2', 50), ('Cleopatra', 50), ('Danny Kaya', 50),
-- Zimbábue (ID 51)
('Oliver Mtukudzi', 51), ('Thomas Mapfumo', 51), ('Alick Macheso', 51), ('Mokoomba', 51), ('Winky D', 51),
-- São Tomé e Príncipe (ID 52)
('Africa Negra', 52), ('Calú Bantú', 52), ('João Seria', 52), ('Ângela Ferrão', 52), ('Neves Bendinho', 52),
-- Comores (ID 53)
('Nawal', 53),
-- Cabo Verde (ID 54)
('Cesária Évora', 54);
