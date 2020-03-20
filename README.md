# Pitzi

Essa é uma aplicação web separada em duas partes. A primeira parte, que faz parte desse repositório, é um serviço construído em Ruby on Rails para registro de assinaturas. O serviço recebe informações de um usuário como nome, CPF, e-mail e informações de sua ordem de compra, como aparelho de celular, IMEI, preço anual e prestações. O objetivo do serviço é receber e validar essas informações e persistir esses dados no banco.

A segunda parte da aplicação, que está [neste repositório](https://github.com/aldowitzke/pitzi-front), é a interface de cadastro de assinatura do usuário. Nessa interface, existe um formulário para captura de informações e uma requisição post para o serviço mencionado acima.

### Instalando

```
1) Abra seu terminal e clone ambos projetos (serviço e interface):
git clone https://github.com/aldowitzke/pitzi-front.git
git clone https://github.com/aldowitzke/pitzi.git
# É possível que seja pedido suas credenciais para clonar o repositório

2) Entre no diretório da interface
cd pitzi-front

3) Abra o index.html
Linux $ xdg-open index.html
MacOS $ open index.html

4) Entre no diretório do serviço
cd ../pitzi

5) Configure
bundle install
rails db:create db:migrate

6) Rode o serviço
rails s
```

Depois dos passos realizados acima, você pode preencher o formulário aberto em seu browser e seu usuário será criado com as informações. Caso as informações não passem pelas validações, como CPF já registrado ou algum campo obrigatório em branco, você receberá um alerta.

### Testes

Para iniciar os testes, rode:
```
rspec
```

Essa aplicação foi construída com as seguintes tecnologias:

- [Ruby on Rails](https://rubyonrails.org/)
- [Rack Cors](https://github.com/cyu/rack-cors)
- [Axios](https://github.com/axios/axios)
- [Bootstrap](https://getbootstrap.com/)
- [RSpec](https://rspec.info/)
- [FactoryBot](https://github.com/thoughtbot/factory_bot)
- [Shoulda Matchers](https://matchers.shoulda.io/)
