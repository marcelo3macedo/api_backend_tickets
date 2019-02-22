CREATE SCHEMA IF NOT EXISTS case_sample;
SELECT DATABASE();

USE case_sample;

CREATE TABLE IF NOT EXISTS Customer (
	Id int NOT NULL AUTO_INCREMENT,
    CustomerID int,
    CustomerName VARCHAR(800),
    CustomerEmail VARCHAR(800),    
    PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS Interaction (
	Id int NOT NULL AUTO_INCREMENT,
    InteractionID int,
    Subject TEXT,
    Message TEXT,
    DateCreate datetime DEFAULT CURRENT_TIMESTAMP,
    Sender VARCHAR(100),
    PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS Ticket (
	Id int NOT NULL AUTO_INCREMENT,
    TicketID int,
    CategoryID int,
    CustomerID int,
    DateCreate datetime DEFAULT CURRENT_TIMESTAMP,
    DateUpdate datetime DEFAULT CURRENT_TIMESTAMP,    
    PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS TicketInteraction (
	Id int NOT NULL AUTO_INCREMENT,
    TicketID int,
    InteractionID int,
    PRIMARY KEY (Id)
);

CREATE VIEW VW_TicketInteraction AS
SELECT TI.TicketID, I.Message, I.Sender, I.Subject, I.DateCreate 
  FROM TicketInteraction TI Left Join
	   Ticket T ON T.TicketID = TI.TicketID LEFT JOIN
       Interaction I ON I.Id = TI.InteractionID;
       
-- DELETE FROM Ticket;
INSERT INTO Ticket ( TicketID, CategoryID, CustomerID, DateCreate, DateUpdate )
	SELECT 28890, 57526, 97979, '2017-12-13 3:08:42', '2018-01-04 9:18:25' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28890) UNION ALL
	SELECT 28891, 46403, 97974, '2017-12-25 3:12:39', '2018-02-12 5:14:11' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28891) UNION ALL
	SELECT 28892, 28514, 97960, '2017-12-21 3:51:39', '2018-01-01 6:21:59' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28892) UNION ALL
	SELECT 28893, 59260, 97958, '2017-12-09 1:34:49', '2018-01-19 1:19:08' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28893) UNION ALL
	SELECT 28894, 36319, 97999, '2017-12-22 1:05:19', '2018-02-04 10:03:08' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28894) UNION ALL
	SELECT 28895, 11769, 97997, '2017-12-16 11:41:52', '2018-01-05 11:27:25' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28895) UNION ALL
	SELECT 28896, 45738, 97928, '2017-12-07 2:40:42', '2018-01-06 10:21:10' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28896) UNION ALL
	SELECT 28897, 31514, 97990, '2017-12-12 1:24:14', '2018-01-09 4:34:40' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28897) UNION ALL
	SELECT 28898, 66134, 97943, '2017-12-03 12:44:34', '2018-02-11 4:22:01' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28898) UNION ALL
	SELECT 28899, 28000, 97959, '2017-12-18 6:24:45', '2018-01-09 7:13:04' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 28899) UNION ALL
	SELECT 288910, 14241, 97907, '2017-12-03 4:57:38', '2018-02-12 12:34:43' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288910) UNION ALL
	SELECT 288911, 12426, 97932, '2017-12-13 6:55:35', '2018-02-10 10:10:55' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288911) UNION ALL
	SELECT 288912, 19961, 97988, '2017-12-12 1:25:30', '2018-02-10 9:11:50' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288912) UNION ALL
	SELECT 288913, 55814, 97975, '2017-12-25 9:03:15', '2018-02-09 20:13:52' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288913) UNION ALL
	SELECT 288914, 55834, 97963, '2017-12-19 10:23:28', '2018-01-29 13:45:22' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288914) UNION ALL
	SELECT 288915, 45306, 97988, '2017-12-27 5:19:59', '2018-01-28 9:16:29' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288915) UNION ALL
	SELECT 288916, 63805, 97969, '2017-12-24 6:29:33', '2018-02-01 8:00:00' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288916) UNION ALL
	SELECT 288917, 49681, 97938, '2017-12-15 3:30:32', '2018-01-10 5:37:56' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288917) UNION ALL
	SELECT 288918, 68176, 97969, '2017-12-17 9:35:01', '2018-01-19 22:20:19' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288918) UNION ALL
	SELECT 288919, 57782, 97958, '2017-12-07 12:59:33', '2018-01-06 2:55:47' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288919) UNION ALL
	SELECT 288920, 25378, 97922, '2017-12-26 10:04:31', '2018-01-06 3:43:55' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288920) UNION ALL
	SELECT 288921, 62228, 97936, '2017-12-12 12:53:57', '2018-01-11 9:30:38' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288921) UNION ALL
	SELECT 288922, 43280, 97907, '2017-12-30 6:07:54', '2018-01-23 4:28:16' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288922) UNION ALL
	SELECT 288923, 64773, 97930, '2017-12-16 9:14:17', '2018-01-25 1:26:16' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288923) UNION ALL
	SELECT 288924, 45228, 97897, '2017-12-20 11:24:29', '2018-02-08 9:55:52' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Ticket Where TicketID = 288924);
    
-- DELETE FROM Customer;
INSERT INTO Customer ( CustomerID, CustomerName, CustomerEmail )
	SELECT 97979, 'Cox Workman', 'cox.workman@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97979) UNION ALL
	SELECT 97974, 'Vilma Mcmahon', 'vilma.mcmahon@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97974) UNION ALL
	SELECT 97960, 'Cristina Pitts', 'cristina.pitts@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97960) UNION ALL
	SELECT 97958, 'Tina Melton', 'tina.melton@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97958) UNION ALL
	SELECT 97999, 'Darcy Erickson', 'darcy.erickson@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97999) UNION ALL
	SELECT 97997, 'Chase Love', 'chase.love@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97997) UNION ALL
	SELECT 97928, 'Irma House', 'irma.house@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97928) UNION ALL
	SELECT 97990, 'Byrd Mcfadden', 'byrd.mcfadden@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97990) UNION ALL
	SELECT 97943, 'Lynnette Taylor', 'lynnette.taylor@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97943) UNION ALL
	SELECT 97959, 'Dejesus Steele', 'dejesus.steele@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97959) UNION ALL
	SELECT 97907, 'Dee Sampson', 'dee.sampson@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97907) UNION ALL
	SELECT 97932, 'Nannie Duffy', 'nannie.duffy@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97932) UNION ALL
	SELECT 97988, 'Bright Obrien', 'bright.obrien@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97988) UNION ALL
	SELECT 97975, 'Dionne Smith', 'dionne.smith@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97975) UNION ALL
	SELECT 97963, 'Mcdaniel Kinney', 'mcdaniel.kinney@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97963) UNION ALL
	SELECT 97988, 'Hull Santiago', 'hull.santiago@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97988) UNION ALL
	SELECT 97969, 'Esperanza Henry', 'esperanza.henry@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97969) UNION ALL
	SELECT 97938, 'Abigail Wilcox', 'abigail.wilcox@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97938) UNION ALL
	SELECT 97969, 'Rachael Dyer', 'rachael.dyer@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97969) UNION ALL
	SELECT 97958, 'Felicia Cotton', 'felicia.cotton@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97958) UNION ALL
	SELECT 97922, 'Paulette Bernard', 'paulette.bernard@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97922) UNION ALL
	SELECT 97936, 'Beulah Moss', 'beulah.moss@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97936) UNION ALL
	SELECT 97907, 'Bass Lowe', 'bass.lowe@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97907) UNION ALL
	SELECT 97930, 'Vicki Gill', 'vicki.gill@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97930) UNION ALL
	SELECT 97897, 'Rosario Mercer', 'rosario.mercer@neoassist.com' FROM DUAL WHERE NOT EXISTS ( SELECT 1 FROM Customer Where CustomerID = 97897);
    
INSERT INTO Interaction (Subject, Message, DateCreate, Sender)
	SELECT 'Sem Assunto', 'Estou procurando bermuda masculina Com bolsos laterais 100 por cento poliéster.', '2017-12-13 3:08:42', 'Customer' FROM DUAL UNION ALL
	SELECT 'Reclamação', 'Boa noite! Comprei na loja um tênis para minha filha, porém está manchando a meia. O que fazer para não estragar todas as meias???', '2017-12-25 3:12:39', 'Customer' FROM DUAL UNION ALL
	SELECT 'Tamanho diferente', 'Boa tarde ! Comprei um tênis tamanho 38 na loja. Entretanto, o pé direito está maior do que o pé esquerdo e só notei ao usá-lo. Essa diferença está notável externamente. Aguardo uma solução', '2017-12-21 3:51:39', 'Customer' FROM DUAL UNION ALL
	SELECT 'Sem assunto', 'Boa tarde ,efetuei uma compra e digitei o meu email errado e nao consigo acompanhar a entrega e a compra o que faço', '2017-12-09 1:34:49', 'Customer' FROM DUAL UNION ALL
	SELECT 'Reclamação', 'efetuei a compra de um produto e até agora nao foi entregue a mercadoria, no site de vcs nao consta o pedido como pendente, já veio debitada a compra na fatura do meu cartão, ja tentei de várias formas e não consigo soluçao, gostaria de resolver da melhor maneira possivel direto com a loja antes de tomar as providências cabíveis', '2017-12-22 1:05:19', 'Customer' FROM DUAL UNION ALL
	SELECT 'Entrega', 'Bom dia, O prazo de entrega do produto foi ontem e até o momento não recebemos o pedido, confirmado o pagamento. Por gentileza, verificar o ocorrido uma vez que já trocamos o produto', '2017-12-16 11:41:52', 'Customer' FROM DUAL UNION ALL
	SELECT 'Elogios', 'Muito obrigado pela gentileza e atenção.Vocês sao simpaticos, gentis e agradaveis de se lidar e de respeito ao consumidor.Não tenho mais palavras para agradecer tamanha gentileza e simpatia.Fiquei muito satisfeito.Recomendarei a todos.', '2017-12-07 2:40:42', 'Customer' FROM DUAL UNION ALL
	SELECT 'Elogios e Sugestões', 'Ficou otimo. Sensacional, gostei.Mais uma vez, elogios para vocês. Obrigado pela atenção, boas vendas.', '2017-12-12 1:24:14', 'Customer' FROM DUAL UNION ALL
	SELECT 'Elogios', 'Parabens pelo produto de voces, pelo bom atendimento e rapidez na entrega. Voces sao otimos.', '2017-12-03 12:44:34', 'Customer' FROM DUAL UNION ALL
	SELECT 'Dúvida', 'Olá eu queria saber se tem data pra ter ou se já está disponivel o produto ABC em alguma loja física', '2017-12-18 6:24:45', 'Customer' FROM DUAL UNION ALL
	SELECT 'Planos e Formas de Pagamento', 'A 1º parcela de 72,00 refere-se a 3 meses de plano, mas o que significa que a assinatura será renovada automaticamente com o valor de 29,00 ? Este procedimento é depois dos 3 meses, ou terei que pagar', '2017-12-03 4:57:38', 'Customer' FROM DUAL UNION ALL
	SELECT 'COnfirmação de data de entrega', 'Gostaria da confirmaço da data para entrega. Tres dias contando a partir de quando? Do dia 19? Preciso destas informaçÃµes também para o preenchimento da minha pesquisa de satisfaço no e-bit. Obrigada', '2017-12-13 6:55:35', 'Customer' FROM DUAL UNION ALL
	SELECT 'Dúvidas sobre o programa', 'fiz assinatura ontem , até agora não consigo acessar o programa , esta é a terceira tentativa de contato , alguém pode resolver meu caso ?', '2017-12-12 1:25:30', 'Customer' FROM DUAL UNION ALL
	SELECT 'Como troco um produto?', 'Comprei no dia 15/6/17 (pedido 4800) um celular. Ontem chegou em minha casa um tablet. A NF está em nome de outra pessoa, com outro número de pedido (4878). Quero saber oq faço', '2017-12-25 9:03:15', 'Customer' FROM DUAL UNION ALL
	SELECT 'Dúvidas sobre cancelamento do programa', 'A opção de cancelamento da continuidade da assinatura não esta funcionando. Ja tentei varias vezes e em dias diferentes e nunca da certo. Não quero continuar com a assinatura.', '2017-12-19 10:23:28', 'Customer' FROM DUAL UNION ALL
	SELECT 'Informação', 'meu pedido ainda nao chegou, quero saber o que aconteceu e o que devo fazer?', '2017-12-27 5:19:59', 'Customer' FROM DUAL UNION ALL
	SELECT 'Cadastro', 'cadastrei meu email errado gostaria de corrigir , peço se possivel corrigir meu email e mandar uma nova senha', '2017-12-24 6:29:33', 'Customer' FROM DUAL UNION ALL
	SELECT 'Data de Entrega', 'como posso rastrear meu pedido simultaneamente, qual a data que ele devera chegar. Por que ele ainda não foi enviado.', '2017-12-15 3:30:32', 'Customer' FROM DUAL UNION ALL
	SELECT 'Coleta de Pedido', 'Bom dia, mudei meu endereço de entrega do pedido, e ainda assim o entregador esta aindo no endereço antigo, segue o novo endereço como ja esta no cadastro de vcs.', '2017-12-17 9:35:01', 'Customer' FROM DUAL UNION ALL
	SELECT 'troca de produto', 'comprei um produto, so que a fonte de alimentaçao não fuciona', '2017-12-07 12:59:33', 'Customer' FROM DUAL UNION ALL
	SELECT 'Entrega', 'quero sabero o nº de rastreio do produto, caso já tenha sido despachado.', '2017-12-26 10:04:31', 'Customer' FROM DUAL UNION ALL
	SELECT 'Formas de Pagamento', 'Gostaria de saber se o notebook A ainda está disponível em estoque e se o preço permanece o mesmo. Também preciso saber qual forma de pagamento.', '2017-12-12 12:53:57', 'Customer' FROM DUAL UNION ALL
	SELECT 'Esclarecer uma dúvida', 'Voces pode manda um cupom de descontos para mim para eu fazer uma nova compra?', '2017-12-30 6:07:54', 'Customer' FROM DUAL UNION ALL
	SELECT 'Como está meu pedido?', 'Bom Dia Efetuei uma compra , o prazo de entrega foram de 8 dias uteis , gostaria de saber se pode ocorrer da entrega ser efetuada antes e como esta o andamento da entrega do mesmo', '2017-12-16 9:14:17', 'Customer' FROM DUAL UNION ALL
	SELECT 'Acompanhamento', 'Gostaria de saber como esta o andamento do pedido, pois este foi reenviado conforme Email que recebi de vocês. Obrigado.', '2017-12-20 11:24:29', 'Customer' FROM DUAL;
    SELECT 'RE: Sem Assunto', 'Olá! Tudo bem? Não temos esse modelo :/ Temos outros modelos no site, dá uma olhada.', '43103.3877893519', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Sem Assunto', 'Olá! Tudo bem? Não temos esse modelo :/ Temos outros modelos no site, dá uma olhada.', '2018-01-03 9:18:25', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Reclamação', 'Bom dia Tudo bem? Esperamos que sim! Poxa, uma pena ter ocorrido com o tênis... Neste caso, há uma garantia diferenciada de 12 meses, e para oferecer essa garantia, a marca define que para casos de defeitos, seja feito a avaliação diretamente com eles, para avaliar o defeito e já emitir o código de autorização da troca. Assim que emitido o código, basta comparecer até a loja com o produto para trocar!', '2018-02-12 5:14:11', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Tamanho diferente', 'Boa tarde. Tudo bem? Esperamos que sim! No caso, basta comparecer a loja onde foi efetuado a compra para verificar as possibilidades de troca/solução referente ao defeito do seu produto, com o produto e nota fiscal em mãos.', '2018-01-01 6:21:59', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Dúvidas', 'Boa noite. Por favor, me informa o número do CPF cadastrado ou número do pedido?', '2018-01-17 1:19:08', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Reclamação', 'Bom dia. Infelizmente a entrega retornou e não conseguimos entrar em contato. Seus dados estão corretos?', '2018-02-04 10:03:08', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Entrega', 'Bom dia. Por favor, qual o número do pedido para que eu possa verificar seu andamento?', '2018-01-05 11:27:25', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Elogios', 'Que ótimo que tenha gostado. Sem palavras, receber um agradecimento por excelência é sensacional para nós.', '2018-01-06 10:21:10', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Elogios e Sugestões', 'Muito bom saber. Nossa satisfação aumenta com clientes assim.', '2018-01-09 4:34:40', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Elogios', 'Ficamos felizes em saber que nosso trabalho traz momentos especiais.', '2018-02-11 4:22:01', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Dúvida', 'Não há previsão de reposição desse produto, mas qual modelo está procurando?', '2018-01-09 7:13:04', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Planos e Formas de Pagamento', 'Olá. O valor de R$72,00 refere-se apenas aos 3 primeiros meses. As próximas renovações após os 3 meses terão o valor de R$29,00. Caso haja mais dúvidas, por favor entrar em contato.', '2018-02-12 12:34:43', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: COnfirmação de data de entrega', 'Olá. A data de entrega é de 3 dias úteis contando a partir do dia de confirmação do pagamento via cartão ou boleto.', '2018-02-05 10:13:42', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Dúvidas sobre o programa', 'Boa tarde. O acesso ao sistema será liberado quando houver confirmação de pagamento via boleto.', '2018-02-05 9:09:59', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Como troco um produto?', 'Olá, bom dia. Enviaremos o produto correto em 5 dias úteis.', '2018-02-02 11:21:49', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Dúvidas sobre cancelamento do programa', 'Bom dia. É uma pena que haja interesse em cancelar. Não há nada que possamos fazer para evitar o cancelamento?', '2018-01-26 12:05:02', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Informação', 'Olá. Por favor, envie-nos o número do seu pedido para que possamos verificar a situação de entrega', '2018-01-26 8:26:19', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Cadastro', 'Olá, bom dia. Seu e-mail já foi alterado. A nova senha poderá ser cadastrada no formulário do site.', '2018-01-28 8:59:51', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Data de Entrega', 'Oi, tudo bem? Para rastrear seu pedido, acesse o site e entre na área Meus Pedidos para verificar a situação atual do mesmo.', '2018-01-10 5:37:56', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Coleta de Pedido', 'Oi, boa noite. Obrigado por entrar em contato. O novo endereço precisa ser confirmado na área de cadastro do cliente.', '2018-01-17 12:22:16', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: troca de produto', 'Bom dia. Por favor, envie-nos o número do pedido para que seja possível fazer uma avaliação', '2018-01-06 2:55:47', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Entrega', 'Olá. Seu pedido encontra-se na transportadora. Para mais informações, acesse o site e verifique status do pedido.', '2018-01-06 3:43:55', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Formas de Pagamento', 'Olá. A disponibilidade e forma de pagamento do equipamento pode ser verificada no site de compra.', '2018-01-11 9:30:38', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Esclarecer uma dúvida', 'Boa tarde. O cupom de descontos é válido apenas para uma compra. Você pode me enviar o número do cupom para que possamos verificar se o mesmo já foi aplicado, por favor?', '2018-01-23 4:28:16', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Como está meu pedido?', 'Olá, tudo bem com você? O seu pedido está com o status Entregue. A senhora poderia confirmar o recebimento do mesmo?', '2018-01-25 1:26:16', 'Expert' FROM DUAL UNION ALL
	SELECT 'RE: Acompanhamento', 'Olá, seu pedido encontra-se em fase de transporte.', '2018-02-07 5:23:53', 'Expert' FROM DUAL;

    SELECT 'RE: Sem Assunto', 'Obrigado. GOsto de bermuda com bolsos laterais . Quem fabricou este modelo?', '2018-01-04 9:18:25', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: Dúvidas', 'Boa tarde segue o numero do pedido 12345', '2018-01-19 1:19:08', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: COnfirmação de data de entrega', 'Mas já faz mais de 3 dias q o pagto já foi confirmado', '2018-02-10 10:10:55', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: Dúvidas sobre o programa', 'Mas já recebi a confirmacao de pagamento por email', '2018-02-10 9:11:50', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: Como troco um produto?', 'Mas o que devo fazer com o outro produto que recbi errado?', '2018-02-09 20:13:52', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: Dúvidas sobre cancelamento do programa', 'Não. Por favor, quero cancelar. Como posso fazer?', '2018-01-29 13:45:22', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: Informação', 'O número do pedido é 829034', '2018-01-28 9:16:29', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: Cadastro', 'o sistema não tá deixando eu mudar a senha. Aparece "senha incorreta"', '2018-02-01 8:00:00', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: Coleta de Pedido', 'Já confirmei o endereço duas vezes e continua dando problema..', '2018-01-19 22:20:19', 'Customer' FROM DUAL UNION ALL
	SELECT 'RE: Acompanhamento', 'OK. Mas quanto tempo vai demorar?', '2018-02-08 9:55:52', 'Customer' FROM DUAL;

INSERT INTO TicketInteraction ( TicketID, InteractionID )
	SELECT '28890', '2' FROM DUAL UNION ALL
	SELECT '28891', '3' FROM DUAL UNION ALL
	SELECT '28892', '4' FROM DUAL UNION ALL
	SELECT '28893', '5' FROM DUAL UNION ALL
	SELECT '28894', '6' FROM DUAL UNION ALL
	SELECT '28895', '7' FROM DUAL UNION ALL
	SELECT '28896', '8' FROM DUAL UNION ALL
	SELECT '28897', '9' FROM DUAL UNION ALL
	SELECT '28898', '10' FROM DUAL UNION ALL
	SELECT '28899', '11' FROM DUAL UNION ALL
	SELECT '288910', '12' FROM DUAL UNION ALL
	SELECT '288911', '13' FROM DUAL UNION ALL
	SELECT '288912', '14' FROM DUAL UNION ALL
	SELECT '288913', '15' FROM DUAL UNION ALL
	SELECT '288914', '16' FROM DUAL UNION ALL
	SELECT '288915', '17' FROM DUAL UNION ALL
	SELECT '288916', '18' FROM DUAL UNION ALL
	SELECT '288917', '19' FROM DUAL UNION ALL
	SELECT '288918', '20' FROM DUAL UNION ALL
	SELECT '288919', '21' FROM DUAL UNION ALL
	SELECT '288920', '22' FROM DUAL UNION ALL
	SELECT '288921', '23' FROM DUAL UNION ALL
	SELECT '288922', '24' FROM DUAL UNION ALL
	SELECT '288923', '25' FROM DUAL UNION ALL
	SELECT '288924', '26' FROM DUAL union all    
    SELECT '28890', '33' FROM DUAL UNION ALL
	SELECT '28891', '34' FROM DUAL UNION ALL
	SELECT '28892', '35' FROM DUAL UNION ALL
	SELECT '28893', '36' FROM DUAL UNION ALL
	SELECT '28894', '37' FROM DUAL UNION ALL
	SELECT '28895', '38' FROM DUAL UNION ALL
	SELECT '28896', '39' FROM DUAL UNION ALL
	SELECT '28897', '40' FROM DUAL UNION ALL
	SELECT '28898', '41' FROM DUAL UNION ALL
	SELECT '28899', '42' FROM DUAL UNION ALL
	SELECT '288910', '43' FROM DUAL UNION ALL
	SELECT '288911', '44' FROM DUAL UNION ALL
	SELECT '288912', '45' FROM DUAL UNION ALL
	SELECT '288913', '46' FROM DUAL UNION ALL
	SELECT '288914', '47' FROM DUAL UNION ALL
	SELECT '288915', '48' FROM DUAL UNION ALL
	SELECT '288916', '49' FROM DUAL UNION ALL
	SELECT '288917', '50' FROM DUAL UNION ALL
	SELECT '288918', '51' FROM DUAL UNION ALL
	SELECT '288919', '52' FROM DUAL UNION ALL
	SELECT '288920', '53' FROM DUAL UNION ALL
	SELECT '288921', '54' FROM DUAL UNION ALL
	SELECT '288922', '55' FROM DUAL UNION ALL
	SELECT '288923', '56' FROM DUAL UNION ALL
	SELECT '288924', '57' FROM DUAL UNION ALL
    SELECT '28890', '64' FROM DUAL UNION ALL
    SELECT '28893', '65' FROM DUAL UNION ALL
    SELECT '288911', '66' FROM DUAL UNION ALL
    SELECT '288912', '67' FROM DUAL UNION ALL
    SELECT '288913', '68' FROM DUAL UNION ALL
    SELECT '288914', '69' FROM DUAL UNION ALL
    SELECT '288915', '70' FROM DUAL UNION ALL
    SELECT '288916', '71' FROM DUAL UNION ALL
    SELECT '288918', '72' FROM DUAL UNION ALL
    SELECT '288924', '73' FROM DUAL;