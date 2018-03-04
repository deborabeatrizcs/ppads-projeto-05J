# Casos de uso

## 1. Diagrama de casos de uso: Manter Usuário (UC01)

![Exemplo de diagrama dos casos de uso](exemplo-casos-uso.png)

## 1.1. Especificação dos casos de uso

Permite que sejam criados novos usuários no sistema.

### 1.2. Caso de uso **Cadastrar Usuário**

| Campo          | Informação        |
|---|---|
| Identificador: | UC01              |
| Nome:          | Cadastar Uduário |
| Atores:        | Vítima Assédio |
| Sumário:       | Cadastro do usuário no sistema. |

| Fluxo Principal |
|---|
| 1) O caso de uso se inicia quando o usuário seleciona a opção cadastre-se.|
| 2) O usuário preenche os dados.                 |
| 3) O usuário aperta no botão "Cadastre-se" para enviar seus dados. |
| 4) O sistema verifica os dados digitados. |
| 5) O sistema guarda os dados do usuário. |
| 6) O sistema encaminha o usuário para página inicial e retorna mensagem de sucesso de cadastro. |


| Fluxo Alternativo (2a): O usuário não preencheu os dados corretamente. |
|---|
| 1) O sistema informa que usuário preencheu dados incorretamente. |
| 2) O sistema solicita preenchimento dos dados novamente sinalizando qual campo não foi preenchido de forma correta. |
| 3) Volta ao passo (4) do fluxo principal. |

| Fluxo Alternativo (2b): O usuário não preencheu todos os dados. |
|---|
| 1) O sistema informa que usuário não preencheu todos os dados incorretamente. |
| 2) O sistema solicita preenchimento dos dados novamente sinalizando qual campo não foi preenchido. |
| 3) Volta ao passo (4) do fluxo principal. |

| Fluxo Alternativo (2c): O usuário preencheu e-mail de alguém que já está cadastrado |
|---|
| 1) O sistema informa que usuário preencheu e-mail de que já foi cadastrado. |
| 2) O sistema solicita preenchimento dos dados novamente sinalizando que já existe cadastro. |
| 3) Volta ao passo (2) do fluxo principal. |


## 2. Diagrama de casos de uso: Manter Usuário (UC01)

![Exemplo de diagrama dos casos de uso](exemplo-casos-uso.png)

## 2.1. Especificação dos casos de uso

Permite que sejam alterados cadastros de usuários no sistema.

### 2.1. Caso de uso **Alterar Usuário**

| Campo          | Informação        |
|---|---|
| Identificador: | UC01              |
| Nome:          | Registrar chamado |
| Atores:        | Vítima Assédio (Principal): altera apenas o seu próprio cadastro. Administrador: altera seu cadastro e de qualquer outro usuário. |
| Sumário:       | Altera usuário no sistema |

| Fluxo Principal |
|---|
| 1) O membro do help desk seleciona a opção **Registro de novo chamado** e informa o CPF do cliente. |
| 2) O sistema recupera as informações do cliente pelo CPF.                   |
| 3) O sistema apresenta as informações do cliente e o formulário para o registro do chamado. |
| 4) O membro do help desk informa o tipo de chamado e preenche o campo descrição com o relato do cliente. |
| 5) O sistema registra o chamado e informa que a operação foi bem-sucedida. |

| Fluxo Alternativo (2a): O sistema não encontra as informações do cliente pelo CPF. |
|---|
| 1) O sistema informa que não conseguiu recuperar as informações pelo CPF e apresenta a opção de cadastrar o cliente. |
| 2) O membro do help desk preenche o formulário de cadastro do cliente. |
| 3) O sistema registra os dados do cliente. |
| 4) Volta ao passo (3) do fluxo principal. |

**Instruções do professor**: As tabelas acima mostram um exemplo de especificação de **um único caso de uso**. Lembre-se de especificar cada um dos casos de uso.

## 1. Diagrama de casos de uso:

**Instruções do professor**: Insira abaixo o diagrama com os casos de uso do seu sistema. A imagem abaixo é somente um exemplo.

![Exemplo de diagrama dos casos de uso](exemplo-casos-uso.png)

## 2. Especificação dos casos de uso

**Instruções do professor**: Para cada caso de uso, criar as tabelas com a especificação do caso de uso. Siga o exemplo dado abaixo:

### 2.1. Caso de uso **REGISTRAR CHAMADO**

| Campo          | Informação        |
|---|---|
| Identificador: | UC01              |
| Nome:          | Registrar chamado |
| Atores:        | Membro do Help Desk |
| Sumário:       | Registra um novo chamado no sistema |

| Fluxo Principal |
|---|
| 1) O membro do help desk seleciona a opção **Registro de novo chamado** e informa o CPF do cliente. |
| 2) O sistema recupera as informações do cliente pelo CPF.                   |
| 3) O sistema apresenta as informações do cliente e o formulário para o registro do chamado. |
| 4) O membro do help desk informa o tipo de chamado e preenche o campo descrição com o relato do cliente. |
| 5) O sistema registra o chamado e informa que a operação foi bem-sucedida. |

| Fluxo Alternativo (2a): O sistema não encontra as informações do cliente pelo CPF. |
|---|
| 1) O sistema informa que não conseguiu recuperar as informações pelo CPF e apresenta a opção de cadastrar o cliente. |
| 2) O membro do help desk preenche o formulário de cadastro do cliente. |
| 3) O sistema registra os dados do cliente. |
| 4) Volta ao passo (3) do fluxo principal. |

**Instruções do professor**: As tabelas acima mostram um exemplo de especificação de **um único caso de uso**. Lembre-se de especificar cada um dos casos de uso.


