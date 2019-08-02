# Reflow Challenge

Commands to initialize the project:<br/>
$ sudo service postgresql start<br/>
$ cd reflow<br/>
$ bundle update<br/>
$ bundle install<br/>
$ rake db:drop db:create db:migrate db:seed<br/>
$ rails s or rails s -p $PORT -b $IP<br/>

Access your browser: http://0.0.0.0:3000 or http://localhost:3000<br/>

Admin's Area:<br>
Login: demo@admin.com<br>
Password: admin123<br>

Ruby Version:<br/>
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18] <br>

Rails Version:<br/>
Rails 5.2.3<br/>

PostGres Version :<br/>
(PostgreSQL) 11.3<br/>

Gem's used:<br/>
Thin<br/>
Devise (Login)<br/>
Faker<br/>

# Reflow Challenge
Esse é um desafio para as pessoas que estão concorrendo para a vaga como Full Stack Developer Freelancer na Reflow.

# O Desafio

## Introdução
A Reflow é uma plataforma usada para a gestão de empresas, diferente de outras plataformas mais tradicionais, o grande diferencial da nossa é o alto grau de customização possivel, onde os usuários tomam as "redeas" para qual caminho pretendem seguir. Pensando nisso, resolvemos pensar em um teste que refletisse um pouco dos desafios do nosso dia-a-dia.

## Descrição
Necessitamos de uma plataforma capaz de gerir curriculos. 

Gostariamos de ser capazes de adicionar e visualizar curriculos para realizar edições futuras quando necessário.

__Obs.:__ A descrição abrangente é proposital, a sua criatividade faz parte do teste. Acreditamos que ser capaz de entregar um bom produto mesmo com uma especificação simples faz parte do trabalho do Desenvolvedor. Além disso, faz parte do trabalho do desenvolvedor entender as necessidades do cliente e a demanda, caso algo não esteja claro, pode mandar um email: reflow@reflow.com.br

## Entrega
Esperamos que você entregue seu projeto em até 1 semana, se precisar de mais tempo, avisar previamente mandando um email com o tempo extra necessário para a realização do teste.

Para isso, você deve realizar um fork nesse projeto e enviar para o email reflow@reflow.com.br o fork contendo seu projeto. (ele pode ser entregue em qualquer plataforma de versionamento de código, tal como Github, Bitbucket, GitLab, etc. Só não esqueça de deixá-lo público).
Ao enviar, não esqueça de escrever um texto explicando como você desenvolveu seu código: como você otimizou uma função, dificuldades que enfrentou, bugs que podemos encontrar, etc.

Contamos que o projeto atenda os requisitos:
+ Possua tanto o Frontend quanto o Backend implementados.
+ Contenha uma documentação clara e coesa de como inicializar e rodar seu programa.
+ Seja programado em qualquer linguagem OOP utilizando qualquer framework.
+ Contenha um texto explicando como seu programa funciona.

## Pontinhos Extras (Opcionais)
+ Programar o Backend do projeto em Python, Ruby ou Javascript (Queremos pessoas com vontade de aprender e de sair da sua zona de conforto)
+ Entregar o projeto usando o framework Django, e se possivel, Django Rest Framework.
+ Escrever Testes automatizados na aplicação.
+ Uso de Docker e/ou Docker Compose.
+ Disponibilizá-la em algum cloud (Heroku, AWS, GCP, Azure, etc.)
+ Escrever APIs REST para conectá-las com o Frontend.

## O que será avaliado
Nós avaliaremos primordialmente o código. Queremos ver códigos que façam sentido e sejam faceis de ler e entender. (Não fique com medo de escrever comentários quando necessário)

Não fique com medo se algo não funcionar ou se você não conseguir implementar algo. Caso isso aconteça, queremos que você nos explique o que não funciona e especialmente porque não funciona.

Nós também avaliaremos a sua criatividade, como você chegou a solução do problema e o que você pensou. Gostariamos muito de ser surpreendidos positivamente com a sua solução.

Não só isso, a documentação da sua aplicação em conjunto com o texto explicando como você chegou na sua solução também serão avaliados.


## Obrigado
Caso você não venha a passar para a próxima fase, queremos garantir que acima de tudo, você tenha aprendido bastante e tenha se divertido realizando esse teste.

Se você tiver dicas ou sugestões de como melhorar esse teste, envie-nos uma issue que iremos avaliá-la.

__Happy Coding :D__