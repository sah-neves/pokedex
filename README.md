Pokédex iOS App

Aplicativo desenvolvido em SwiftUI que simula uma Pokédex, permitindo busca, visualização de detalhes e análise estatística dos Pokémon. O projeto demonstra uso de arquitetura limpa, design responsivo e código escalável, com boas práticas de desenvolvimento.

- Visão Geral

Desenvolvido inteiramente com SwiftUI, utilizando navegação moderna com NavigationStack e organização por tabs com TabView. A estrutura de dados segue princípios de segurança de tipo e modularização.

- Funcionalidades

Busca em tempo real por nome
Visualização de detalhes com imagem, nome, ID e tipos
Contador de ocorrências de cada tipo de Pokémon
Design adaptado a diferentes tamanhos de tela
Carregamento de imagens por URL com AsyncImage

- Tecnologias

SwiftUI para UI declarativa e reativa
Enums e Structs para tipagem segura e modelagem de dados
Componentização de views para reaproveitamento e manutenção
Código organizado com foco em clareza e legibilidade

- Estrutura

Pokemon.swift define o modelo de dados
PokedexView exibe a lista com filtro e exibição de tipos
DetalhesPokemonView apresenta dados específicos de cada Pokémon
EstatisticaView calcula e exibe estatísticas por tipo
ContentView organiza a navegação em abas

- Execução

O projeto pode ser executado diretamente no Xcode 15 ou superior. Não há dependências externas. Código limpo, comentado de forma objetiva, ideal para avaliação de habilidades com SwiftUI, estruturação de app e UI declarativa.
