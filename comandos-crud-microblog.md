```sql
-- INSERT Usuarios
INSERT INTO usuarios (nome, email, senha, tipo_usuario) VALUES ('usuarios');
INSERT INTO usuario (nome, email, senha, tipo_usuario) VALUES(
    'Ana silva',
    'ana@email.com',
    '123abc',
    'editor'

);

INSERT INTO usuario (nome, email, senha, tipo_usuario) VALUES(
    'Bruno Souza'
    'bruno@email.com',
    'abc456',
    'admin'
);

INSERT INTO usuarios (nome, email, senha, tipo_usuario) VALUES(
    'Carla Mendes',
    'carla@email.com',
    '789xyz',
    'editor'
);


```


```sql
INSERT INTO categorias (nome) VALUES(
    'Tecnologia' );
    INSERT INTO categorias (nome) VALUES(
    'Educação' );
INSERT INTO categorias (nome) VALUES(
    'Entretenimento' );

```

```sql
INSERT INTO noticias (titulo, resumo, texto, imagem, destaque, usuarios_id, categorias_id) VALUES(
    'Inteligência artificial ganha espaço no dia a dia',

    'Ferramentas de inteligência artificial estão sendo utilizadas em atividades cotidianas.',

    'A inteligência artificial vem se tornando cada vez mais presente na rotina das pessoas. Ferramentas de IA podem ajudar em pesquisas, estudos, organização de tarefas e criação de conteúdos. Com o avanço da tecnologia, novos recursos devem continuar surgindo e facilitando diversas atividades.',

    'tecnologia-educacao.jpg',
    2,
    2

    
);


INSERT INTO noticias (titulo, resumo, texto, imagem, destaque, usuario_id, categoria_id) VALUES(
    'Jogos eletrônicos continuam conquistando novos jogadores',

    'O mercado de games continua crescendo e atraindo pessoas de diferentes idades.',

    'Os jogos eletrônicos fazem parte do entretenimento de milhões de pessoas. Atualmente, é possível jogar em computadores, consoles e celulares. Além dos grandes lançamentos, jogos independentes também vêm ganhando destaque entre os jogadores.',

    'jogos-eletronicos.jpg',
    'sim'
    1,
    3

    
);
```

```sql

INSERT INTO noticias (titulo, resumo, texto, imagem, destaque, usuario_id, categoria_id) VALUES(
    'Inteligência artificial ganha espaço no dia a dia',

    'Ferramentas de inteligência artificial estão sendo utilizadas em atividades cotidianas.',

    'A inteligência artificial vem se tornando cada vez mais presente na rotina das pessoas. Ferramentas de IA podem ajudar em pesquisas, estudos, organização de tarefas e criação de conteúdos. Com o avanço da tecnologia, novos recursos devem continuar surgindo e facilitando diversas atividades.',

    'inteligencia-artificial.jpg',
    'sim'
    3,
    1
);
```


```sql

INSERT INTO noticias (titulo, resumo, texto, imagem, destaque, usuario_id, categoria_id) VALUES(
    'Filmes e séries ganham cada vez mais espaço no streaming',

    'Plataformas de streaming continuam investindo em novos filmes e séries para atrair o público.',

    'Os serviços de streaming mudaram a forma como muitas pessoas assistem a filmes e séries. Com diferentes opções de gêneros e produções, o público pode escolher o que assistir diretamente pela internet. As plataformas também estão investindo em produções próprias para conquistar novos espectadores',

    'filmes-streaming.jpg',
    'não',
    2,
    3
);
```
