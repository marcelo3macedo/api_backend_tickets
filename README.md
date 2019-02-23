# API Backend - Tickets

### Sobre
Desenvolvido uma API utilizando a linguagem PHP requisitando informações de um banco MySQL.
Necessário instalação de versão do PHP >= 7.0.

### Como utilizar
Faça o download ou clone o conteúdo deste diretório e copie-o para o diretório do APACHE.
Obs: Na coleção Postman disponibilizada, o conteúdo foi copiado dentro de uma pasta "test" "<<diretorioapache>>/test/".
Coleção Postman: https://www.getpostman.com/collections/772c16bdab502fa09e58

### Prioridade
- A classificação dos Tickets são calculadas e disponilizadas em todas as requisições sendo aglomerada no objeto Ticket através da propriedade "Priority".
    
### Ordenacao
- Para a realizacao da ordenação dos tickets, utilize o parametro order: "/api/read.php?order={{ option }}".
- As possibilidades de ordenação são: DateCreate, DateUpdate e Priority.

### Filtro Data Criação
- Para a realizacao da filtragem dos tickets pela data criação, utilize os parametros start e end: "/api/read.php?start=0000-00-00&end=0000-00-00".
- O formato de data utilizado é 0000-00-00, qualquer outro formato informado será desconsiderado.

### Filtro Prioridade
- Para a realizacao da filtragem dos tickets pela prioridade, utilize o parametro priority "/api/read.php?priority=Alta".

### Paginação
- O limite atual de itens por página de 10.
- Para a realizacao da filtragem dos tickets pela prioridade, utilize o parametro pag "/api/read.php?pag=2".
