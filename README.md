# README

## Setup:

```bash
bundle install
yarn install

rails db:create db:migrate
rails db:seed
```

Per avviare il server:
```bash
rails server
bin/webpack-dev-server
```

Per avviare i test:

```bash
bundle exec rspec
```

### Compiti:

a) L'api corrente /api/posts ha un problema di performance molto comune. Qual è? Come si potrebbe risolvere?

b) Implementare una nuova API nel PostsController che, ricevendo in GET un parametro "term" permetta di cercare per nome e per tag i post.

Ad esempio, cercando "gatto", verrà trovato un post che contiene la parola gatto o che ha almeno un tag che si chiama "gatto".

Per l'implementazione, utilizzare l'approccio "TDD". Per farla semplice, implementa semplicemente un test nella cartella spec/requests similare a quello già fatto per l'index

c) Implementare in Vue un'input form, modificando il componente app.vue, che permetta di filtrare i post utilizzando l'API creata precedentemente.
