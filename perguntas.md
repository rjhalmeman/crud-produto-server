No arquivo script.js

1) No vscode, como eu abro um terminal para executar comandos como git add ., ou npm, etc? Explique.
2) O que significa "ter um servidor rodando". A frase o servidor caiu, o que quer dizer? Você subiu o servidor? Explique essas frases.

~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.

💙OKSANE💙 :

❤️💙 "Ter um servidor rodando": Significa que o servidor está ativo e funcionando.

❤️💙 "O servidor caiu": Significa que o servidor parou de funcionar, geralmente por algum problema.

❤️💙 "Você subiu o servidor?": Significa perguntar se o servidor foi iniciado ou colocado em   funcionamento.


❤️💙 R: Ter um servidor rodando: O sistema está funcionando e aceitando conexões.
O servidor caiu: O sistema parou, está fora do ar, não está mais funcionando.
Você subiu o servidor?: Você ligou/ativou o servidor? (Colocou ele para rodar novamente?)


~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.

R: Ter um servidor rodando: O sistema está funcionando e aceitando conexões.
O servidor caiu: O sistema parou, está fora do ar, não está mais funcionando.
Você subiu o servidor?: Você ligou/ativou o servidor? (Colocou ele para rodar novamente?)

3) O que é document.addEventListener('DOMContentLoaded', function() { ? Especialmente DOMContentLoaded

R- Ele é basicamente um evento, que quando o conteúdo do arquivo HTML for carregado, ele em seguida executará o que estiver na função.

4) Explique  productForm.addEventListener('submit', function(e) {. Que evento submit é esse? O que é o preventDefault? ( e.preventDefault();)

Resposta do David
productForm.addEventListener('submit', function(e) { escuta quando o formulário é enviado.
e.preventDefault(); evita que a página recarregue ao enviar o formulário.

RESPOSTA: No JavaScript, `productForm.addEventListener('submit', function(e) {` adiciona um 
ouvinte para o evento de envio do formulário. O evento `submit` é acionado quando o formulário é enviado. 
A função `e.preventDefault()` impede o envio padrão (como recarregar a página), permitindo que o envio seja tratado com JavaScript.

5) Na função productForm.addEventListener, explique a const product e o if que vem na sequência
 -- a "const product" cria um objeto chamado product com duas propriedades. "name" recebe o valor da váriavel productName. e "quantity" recebe o valor numérico do campo quantidade e transforma-o para inteiro. o bloco if é uma verifiação condicional para saber se o formulário está sendo usado para criar ou editar um produto novo.

6)  function loadProducts() {
        fetch('http://localhost:3000/products'). O que é esse fetch? Para que serve?  
        
Resp (da Fefê): O `fetch` é uma função JavaScript usada para fazer requisições HTTP (HyperText Transfer Protocol). No exemplo, ela busca dados da URL (Uniform Resource Locator) `'http://localhost:3000/products'`. Serve para obter informações de um servidor, como uma lista de produtos.
        
7) No fetch, tem .then e .catch. O que é isso? Explique.
8) Explique a function addProductToTable(product) {. Prepare-se para fazer um teste de mesa demonstrando seu funcionamento. Onde esse função é chamada?

JÃO
R:A função addProductTable(product) adiciona um produto a uma tabela.

9) Na função addProductToTable, tem um querySelecto. O que é isso? Para que serve?

//O que é querySelector? 
O querySelector é um método JavaScript que permite selecionar o primeiro elemento no documento que corresponde a um seletor CSS específico. Ele "procura" no DOM (Document Object Model) por elementos que combinem com o seletor fornecido.

Para que serve neste contexto?
//Neste caso específico:
  row.querySelector('.edit-btn') - Procura dentro da linha da tabela (row) o primeiro elemento com a classe CSS edit-btn (que é o botão "Editar")
  row.querySelector('.delete-btn') - Procura dentro da linha da tabela o primeiro elemento com a classe CSS delete-btn (que é o botão "Excluir")
  Depois de encontrar esses botões, o código adiciona um event listener (ouvinte de eventos) a cada um deles:

Ao botão "Editar": chama a função editProduct com o ID do produto
Ao botão "Excluir": chama a função deleteProduct com o ID do produto

//Por que usar querySelector aqui?
Estamos usando querySelector porque:
Precisamos encontrar os botões específicos dentro de cada linha da tabela
Queremos adicionar comportamentos dinâmicos a esses botões
É uma forma eficiente de selecionar elementos baseados em classes CSS

10) Na função createProduct, tem um body: JSON.stringfy(product). O que isso faz?
   //UENER\\ 
 ele transforma o objeto JavaScript em uma string JSON


R: Na função createProduct, o trecho body: JSON.stringify(product) serve para converter o objeto JavaScript product em uma string JSON, que é o formato esperado quando você envia dados em uma requisição HTTP (normalmente do tipo POST ou PUT) para uma API.


11) Na função createProduto, tem .catch(error => console.error('Erro ao criar produto:', error)); Onde vai printar essa mensagem de erro? Explique.
Heloyse: Vai printar no console (no navegador ou no vscode). 
Pois em "console.error", indica que o erro aparecerá apenas no console, e não como um alert no html.

R:A mensagem será impressa no console do navegador caso apareça algum erro durante a criação do produto, que pode estar relacionado a problemas de conexão com o servidor, problemas de validação de dados, entre outros.

12) Na função function editProduct(id) {
        fetch(`http://localhost:3000/products/${id}`). O que é esse S{id} que aparece no fetch? Por quê? Explique isso.
    R: Nessa função, a parte \${id} é utilizada para inserir dinamicamente o valor da variável id dentro da URL. Isso é possível porque essa string está escrita utilizando template literals (ou template strings), que são delimitadas por crases (`) em vez de aspas.
    As template strings permitem que expressões JavaScript sejam inseridas diretamente dentro da string usando a sintaxe ${...}. No caso do exemplo, ${id} será substituído pelo valor da variável id quando o código for executado. Por exemplo, se id for igual a 5, a URL final usada pelo fetch será http://localhost:3000/products/5.  

    Theo: R: Na função editProduct(id) { fetch(\http://localhost:3000/products/${id}\`) }, a parte ${id}dentro da URL está usando uma **template string** (ou **template literal**) do JavaScript. Template strings são delimitadas por crases (`` ``) em vez de aspas (' ou "), e permitem interpolar variáveis diretamente dentro da string usando a sintaxe ${...}.

No caso, ${id} será substituído pelo valor da variável id no momento da execução. Por exemplo, se id = 5, a URL final será: http://localhost:3000/products/5



  
    
13) Explique esse app.get('/products', (req, res) => {
    res.json(products);
});

Resposta😎: Cria uma rota que quando uma requisição GET é feita o express() responde com a
lista de produtos que esta no link do localhost, porém convertido em uma array do tipo jason,
e o cliente recebe ela

14) Explique esse app.get('/products/:id', (req, res) => {
    const id = parseInt(req.params.id);
    const product = products.find(p => p.id === id);

    if (product) {
        res.json(product);
    } else {
        res.status(404).json({ message: 'Produto não encontrado' });
    }
});
Faça algum tipo de analogia, para que todos entendam isso.

---

15) Esse app.post('/products', (req, res) => {. É uma função? O que é essa flexinha (=>)?

# Débora Voidelo: 
A linha app.post('/products', (req, res) => { define uma função que será executada quando o servidor receber uma requisição do tipo POST 
no endereço /products. Ou seja, quando alguém enviar dados para esse caminho, essa função vai ser chamada.

A parte (req, res) são os parâmetros da função. req representa a requisição que chegou (com dados, cabeçalhos, etc.), e res 
representa a resposta que será enviada de volta ao cliente.

A seta => é usada para escrever uma arrow function, uma forma mais moderna e compacta de escrever funções em JavaScript. Funciona como uma função normal, mas com uma sintaxe mais curta.

Então, essa linha está dizendo:

"Quando alguém fizer uma requisição POST para o caminho /products, execute esta função que lida com a requisição e prepara a resposta."

# Gabriel Thomé Baumann: 
Basicamente, se tivermos uma loja de produtos em que cada prateleira tiver um id único e um produto diferente. 
O vendedor só vai ter que pegar o id da prateleira e verificar se existe um produto com essa prateleira. Caso ele encontre, 
vai aparecer qual produto é, caso não vai mostrar 'Produto não encontrado'

15) Esse app.post('/products', (req, res) => {. É uma função? O que é essa flexinha (=>)?(wagner)
O código app.post('/products', (req, res) => { ... }) usa uma arrow function (função de seta) no JavaScript. A "flexinha" (=>) é uma 
forma mais curta e moderna de escrever funções. No exemplo, req representa a requisição e res a resposta do servidor. Essa sintaxe é
equivalente a uma função tradicional, mas mais concisa.
--- 
16) Para que serve isso?
     app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});

Esse pedaço de código tem duas funções principais:

Iniciar o servidor

A chamada app.listen(PORT, callback) faz com que sua aplicação comece a “ouvir” requisições HTTP na porta indicada por PORT.
Pense na porta como uma porta de entrada: é por ali que clientes (navegadores, apps, etc.) se conectam para usar seu serviço.

Confirmar que está rodando

O segundo argumento de app.listen é uma função que só roda depois que o servidor realmente entrou em operação.
Dentro dessa função, console.log("Servidor rodando em http://localhost:" + PORT) escreve no terminal uma mensagem avisando onde encontrar sua aplicação.
Em outras palavras, esse comando:
Liga o “motor” do servidor na porta definida
Assim que tudo estiver ok, imprime no console o endereço (localhost mais a porta) para você saber que pode começar a testar
Dessa forma você garante que o servidor está ativo e recebe um feedback imediato de que ele está acessível em localhost na porta escolhida.

17) Para que serve isso? É importante?
 process.on('SIGINT', () => {
    saveDataToCSV();
    process.exit();
});
No server.js

Serve para:

Salvar os dados em um arquivo .csv automaticamente quando o servidor for encerrado (por exemplo, ao apertar Ctrl + C).
É importante?

✅ Sim, evita que você perca alterações feitas em memória (como produtos, cupons ou usuários) ao fechar o servidor.

18) Têm a function loadDataFromCSV() {. Explique isso de modo simples (para humanos leigos entenderem).
19) O que são rotas no servidor? O que tem haver com o express?
20) Explique o que é o cors. Para que serve? 
Julia
O CORS (sigla para Cross-Origin Resource Sharing, ou Compartilhamento de Recursos entre Origens Diferentes) é um mecanismo de segurança implementado pelos 
navegadores para controlar o acesso a recursos entre diferentes origens (domínios, portas ou protocolos).

O CORS protege os usuários contra requisições mal-intencionadas vindas de outras origens. Por padrão, o navegador bloqueia requisições 
feitas por JavaScript de uma origem para outra (por exemplo, de siteA.com para siteB.com) caso o servidor de destino não permita isso explicitamente.
