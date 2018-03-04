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
| Atores:        | Vítima de Assédio |
| Sumário:       | Cadastro do usuário no sistema. |

| Fluxo Principal |
|---|
| 1) O caso de uso se inicia quando o usuário seleciona a opção cadastre-se.|
| 2) O usuário preenche os dados.                 |
| 3) O usuário aperta no botão "Cadastre-se" para enviar seus dados. |
| 4) O sistema verifica os dados digitados. |
| 5) O sistema guarda os dados do usuário. |
| 6) O sistema encaminha o usuário para página inicial e retorna mensagem de sucesso de cadastro. |


| Fluxo Alternativo (1a): O usuário não preencheu os dados corretamente. |
|---|
| 1) O sistema informa que usuário preencheu dados incorretamente. |
| 2) O sistema solicita preenchimento dos dados novamente sinalizando qual campo não foi preenchido de forma correta. |
| 3) Volta ao passo (4) do fluxo principal. |

| Fluxo Alternativo (1b): O usuário não preencheu todos os dados. |
|---|
| 1) O sistema informa que usuário não preencheu todos os dados incorretamente. |
| 2) O sistema solicita preenchimento dos dados novamente sinalizando qual campo não foi preenchido. |
| 3) Volta ao passo (4) do fluxo principal. |

| Fluxo Alternativo (1c): O usuário preencheu e-mail de alguém que já está cadastrado |
|---|
| 1) O sistema informa que usuário preencheu e-mail de que já foi cadastrado. |
| 2) O sistema solicita preenchimento dos dados novamente sinalizando que já existe cadastro. |
| 3) Volta ao passo (2) do fluxo principal. |


## 2. Diagrama de casos de uso: Manter Usuário (UC01)

![Exemplo de diagrama dos casos de uso](exemplo-casos-uso.png)

## 2.1. Especificação dos casos de uso

Permite que sejam alterados cadastros de usuários no sistema.

### 2.2. Caso de uso **Alterar Usuário**

| Campo          | Informação        |
|---|---|
| Identificador: | UC01              |
| Nome:          | Registrar chamado |
| Atores:        | Vítima de Assédio (Principal): altera apenas o seu próprio cadastro.|
| Sumário:       | Altera usuário no sistema |

##2.3. Pré condição O Usuário deve ter acessado o sistema e estar logado.

| Fluxo Principal |
|---|
| 1) O usuário clica em “Perfil” |
| 2) O sistema redireciona o usuário para a página de perfil.                   |
| 3) O usuário altera os dados. |
| 4) O usuário confirma a alteração. |
| 5) O sistema verifica os dados digitados. |
| 6) O sistema salva os dados alterados.|
| 7) O sistema encaminha o usuário para página inicial e retorna mensagem de sucesso de alteração. |


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


## 3. Diagrama de casos de uso: Manter Usuário (UC01)

![Exemplo de diagrama dos casos de uso](exemplo-casos-uso.png)

## 3.1. Especificação dos casos de uso

Descrição Permite que sejam excluídos cadastros de usuários do sistema.

### 3.2. Caso de uso **Excluir Usuário**

| Campo          | Informação        |
|---|---|
| Identificador: | UC01              |
| Nome:          | Excluir Usuário |
| Atores:        | Vítima de Assédio |
| Sumário:       | Exclui cadastro do sistema |

##3.3. Pré condição O usuário deve ter acessado e estar logado.

| Fluxo Principal |
|---|
| 1) O usuário clica em “Perfil” |
| 2) O usuário é encaminhado para a página de perfil.                |
| 3) O usuário clica na opção “Excluir Cadastro”. |
| 4) O usuário confirma a opção de excluir cadastro. |
| 5) O sistema exclui os dados do usuário.|
| 6) O sistema encaminha o usuário para página inicial e retorna mensagem de sucesso de exclusão.|


| Fluxo Alternativo (3a): Usuário deseja cancelar exclusão de cadastro. |
|---|
| 1) o usuário clicou em “Cancelar” na caixa de diálogo de confirmação para excluir conta. |
| 4) Volta ao passo (2) do fluxo principal. |


## 4. Diagrama de casos de uso: Manter Usuário (UC01)

![Exemplo de diagrama dos casos de uso](exemplo-casos-uso.png)

## 4.1. Especificação dos casos de uso

Permite que sejam visualizados os dados de cadastro de usuários do sistema.

### 4.2. Caso de uso **Ver Usuário**

| Campo          | Informação        |
|---|---|
| Identificador: | UC01              |
| Nome:          | Ver Usuário |
| Atores:        | Vítima de Assédio : visualiza apenas seus dados cadastrais. |
| Sumário:       | Visualiza cadastro do sistema |

## 4.3. Pré condição O usuário deve ter acessado e estar logado.

| Fluxo Principal |
|---|
| 1) O usuário clica em “Perfil” |
| 2) O usuário é encaminhado para a página de perfil.                |
| 3) O usuário visualiza seus dados cadastrais. |
| 4) O usuário clica na opção de voltar à página inicial. |
| 5) O sistema encaminha o usuário para página inicial.|


