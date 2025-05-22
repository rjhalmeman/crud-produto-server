No arquivo script.js

1) No vscode, como eu abro um terminal para executar comandos como git add ., ou npm, etc? Explique.
Primeiro - Abra seu projeto no VS Code.
Segundo - se o atalho Ctrl + ' (acento grave).
O terminal abrirá na parte inferior da tela, já dentro da pasta do projeto.

2) O que significa "ter um servidor rodando". A frase o servidor caiu, o que quer dizer? Você subiu o servidor? Explique essas frases.
R: Ter um servidor rodando: O sistema está funcionando e aceitando conexões.
O servidor caiu: O sistema parou, está fora do ar, não está mais funcionando.
Você subiu o servidor?: Você ligou/ativou o servidor? (Colocou ele para rodar novamente?)

3) O que é document.addEventListener('DOMContentLoaded', function() { ? Especialmente DOMContentLoaded
R: Ele é basicamente um evento, que quando o conteúdo do arquivo HTML for carregado, ele em seguida executará o que estiver na função.

4) Explique  productForm.addEventListener('submit', function(e) {. Que evento submit é esse? O que é o preventDefault? ( e.preventDefault();)
Claro! Aqui está um resumo em forma de texto, ideal para anotar ou colocar em uma folha:
R:Quando usamos `addEventListener` com o evento **submit**, estamos dizendo ao JavaScript para executar uma ação quando o formulário for enviado. Esse envio normalmente recarrega a página e envia os dados para o servidor.

A função `preventDefault()` é usada para impedir esse comportamento padrão. Ou seja, o formulário não vai recarregar a página, permitindo que o JavaScript trate os dados de outra forma, como por exemplo enviar para o servidor com JavaScript moderno (AJAX ou Fetch).

Esse controle é importante para criar formulários mais interativos e rápidos, sem a necessidade de atualizar a página inteira.


5) Na função productForm.addEventListener, explique a const product e o if que vem na sequência
Claro! Aqui vai uma explicação clara e resumida, ideal para uma folha de papel:
R:Dentro da função `productForm.addEventListener`, a constante `product` geralmente é usada para **guardar os dados digitados no formulário**, como nome, preço ou descrição de um produto. Ela junta esses dados em um único "pacote" (objeto) que depois pode ser enviado para o servidor ou salvo em algum lugar.

O `if` que vem logo depois serve para **verificar se todos os campos obrigatórios foram preenchidos corretamente**. Por exemplo, pode verificar se o nome não está vazio ou se o preço é um número válido.

Se o `if` der verdadeiro, o formulário continua o processo (como salvar ou enviar os dados). Se for falso, ele pode mostrar uma mensagem de erro e impedir o envio. Isso ajuda a garantir que os dados estão corretos antes de serem usados.

6)  function loadProducts() {
        fetch('http://localhost:3000/products'). O que é esse fetch? Para que serve?
R: Fetch é uma função do JavaScript usada para fazer requisições a um servidor, como buscar ou enviar dados.
Está pedindo dados de uma rota chamada /products que está no servidor local.
Essa rota provavelmente retorna uma lista de produtos em formato JSON.

7) No fetch, tem .then e .catch. O que é isso? Explique.
Eles fazem parte do tratamento de promessas (Promises) no JavaScript.
Quando você usa fetch, ele promete que vai trazer uma resposta do servidor — mas isso pode demorar (ex: conexão, resposta, etc).

8) Explique a function addProductToTable(product) {. Prepare-se para fazer um teste de mesa demonstrando seu funcionamento. Onde esse função é chamada?
A função addProductToTable(product) recebe um objeto product com informações (ex: nome, preço, quantidade) e adiciona uma nova linha na tabela HTML para mostrar esses dados.
Como funciona?
- Cria uma nova linha (<tr>) na tabela.
- Cria células (<td>) para cada informação do produto (nome, preço, etc).
- Insere essas células na linha.
- Adiciona essa linha no corpo da tabela (<tbody>).

Teste de mesa (exemplo simples):
Suponha o produto:
const product = { name: "Caneta", price: 2.5, quantity: 10 };

Passo a passo:
- Cria uma linha.
- Cria células com "Caneta", "2.5" e "10".
- Adiciona as células na linha.
- Insere a linha na tabela.

Resultado: tabela ganha uma linha com esses dados.

Normalmente, é chamada quando o usuário adiciona um produto — por exemplo, após preencher um formulário e clicar em “Adicionar”. Pode estar dentro de um evento de clique ou submissão de formulário.

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
    R: Na função createProduct, o trecho body: JSON.stringify(product) serve para converter o objeto JavaScript product em uma string JSON, que é o formato esperado quando você envia dados em uma requisição HTTP (normalmente do tipo POST ou PUT) para uma API.
11) Na função createProduto, tem .catch(error => console.error('Erro ao criar produto:', error)); Onde vai printar essa mensagem de erro? Explique.
R:A mensagem será impressa no console do navegador caso apareça algum erro durante a criação do produto, que pode estar relacionado a problemas de conexão com o servidor, problemas de validação de dados, entre outros.

12) Na função function editProduct(id) {
        fetch(`http://localhost:3000/products/${id}`). O que é esse S{id} que aparece no fetch? Por quê? Explique isso.
 R: Nessa função, a parte \${id} é utilizada para inserir dinamicamente o valor da variável id dentro da URL. Isso é possível porque essa string está escrita utilizando template literals (ou template strings), que são delimitadas por crases (`) em vez de aspas.
 As template strings permitem que expressões JavaScript sejam inseridas diretamente dentro da string usando a sintaxe ${...}. No caso do exemplo, ${id} será substituído pelo valor da variável id quando o código for executado. Por exemplo, se id for igual a 5, a URL final usada pelo fetch será http://localhost:3000/products/5.    
    
13) Explique esse app.get('/products', (req, res) => {
    res.json(products);
});
O que é esse res? 
R:O código app.get('/products', (req, res) => { res.json(products); }); cria uma rota no servidor usando Express.js.
- Quando alguém acessa o endereço /products com uma requisição do tipo GET, essa função é executada.
- req representa a requisição do cliente.
- res representa a resposta do servidor.
- A linha res.json(products); faz o servidor responder com os dados da variável products em formato JSON.

Por exemplo, se products for uma lista de produtos, essa rota envia essa lista como resposta.
Em resumo: esse código serve para mostrar os produtos quando alguém acessa a URL /products.

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
R:
- Esse trecho é uma rota do servidor que responde a um pedido GET para um produto específico, usando o id do produto na URL.
- req.params.id pega o id que o cliente pediu (por exemplo, /products/5 pega o id = 5).
- O código transforma esse id em número (parseInt) e procura na lista products um produto com esse id.
- Se encontrar, retorna os dados do produto em formato JSON (res.json(product)).
- Se não encontrar, retorna um erro 404 (produto não encontrado) com uma mensagem.

Analogia
Imagina que o servidor é uma biblioteca e você quer um livro específico:

Você chega no balcão e fala: "Quero o livro número 5."
O atendente (servidor) pega o número que você falou (id = 5).
Ele procura na estante (lista de produtos) o livro com esse número.

Se encontrar, ele te entrega o livro (envia o produto como resposta).
Se não encontrar, ele diz: "Desculpe, livro não encontrado" (resposta 404).

15) Esse app.post('/products', (req, res) => {. É uma função? O que é essa flexinha (=>)?
Isso é uma função anônima (sem nome) que é passada como callback para o método post do objeto app.
app.post define uma rota que responde a pedidos POST no caminho /products. Ou seja, quando alguém envia dados para /products, essa função será executada.
Já a flexinha é a função arrow do JavaScript, também chamada de função de seta.
As funções arrow são mais concisas e têm algumas diferenças no comportamento de this
16) Para que serve isso?
     app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});

R:
app.listen(PORT, ...) faz o servidor começar a escutar (ou "rodar") na porta definida pela variável PORT.
Isso significa que o servidor está pronto para receber pedidos (requisições) dos usuários naquela porta.
A função dentro da flexinha () => { ... } é uma função que roda assim que o servidor começa a funcionar.
Nesse caso, ela só imprime no console a mensagem:
"Servidor rodando em http://localhost:PORT", confirmando que está tudo certo.

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
R: Imagina que você tem uma lista de contatos escrita num caderno (arquivo CSV).
A função loadDataFromCSV() é como se você estivesse copiando essa lista do caderno para a agenda do seu celular, para poder usar quando quiser.

19) O que são rotas no servidor? O que tem haver com o express?
Rotas são os caminhos que o servidor entende e responde quando alguém faz uma requisição (pedido).
Por exemplo, quando você entra no site meusite.com/produtos, o /produtos é uma rota.
Cada rota pode executar uma função diferente, que mostra uma página, retorna dados, etc.
Express é uma biblioteca do JavaScript que facilita criar essas rotas de forma simples.

Resumindo:
Rotas = portas ou caminhos que levam a diferentes respostas do servidor.
Express = uma ferramenta que ajuda a criar essas rotas e organizar o servidor rapidinho.

20) Explique o que é o cors. Para que serve? 
R:
CORS significa Cross-Origin Resource Sharing (Compartilhamento de Recursos entre Origens Diferentes).
É uma segurança do navegador que controla quando um site pode pedir informações de outro domínio (origem).

Serve para evitar que um site mal-intencionado acesse dados de outro site sem permissão.
Por padrão, o navegador bloqueia requisições feitas entre diferentes domínios (origens).
O CORS permite que o servidor autorize que certos sites externos acessem seus recursos.