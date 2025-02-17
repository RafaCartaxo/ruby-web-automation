# Ruby Web Automation

Este é um projeto pessoal desenvolvido em **Ruby** para a automação de testes de aplicações web, utilizando as ferramentas **Cucumber** e **Capybara**, com foco em organização, escalabilidade e integração contínua.

## Principais características

- Estrutura bem organizada, facilitando a manutenção e a adição de novos cenários de teste.
- Uso do **Cucumber** para escrita de cenários em linguagem natural, garantindo clareza e alinhamento entre desenvolvedores e partes interessadas.
- Integração com **Capybara**, permitindo a interação intuitiva com elementos da página e simulação do comportamento do usuário.
- Utilização da biblioteca **Faker** para geração de dados dinâmicos e realistas, simulando diversos cenários de teste.
- Suporte a diferentes drivers, como **Selenium WebDriver**, para execução de testes em navegadores reais ou headless.
- Pronto para integração com pipelines de **CI/CD** em plataformas como **GitLab** ou **GitHub**, garantindo testes de regressão automatizados a cada nova implementação.

## Instruções para configuração de ambiente

1. Instalar o Ruby
2. Instalar o gerenciador de Gems:
   ```sh
   gem install bundler
   ```
3. Instalar as Gems do projeto:
   ```sh
   bundle install
   ```
4. Configurar um driver (exemplo: **Selenium WebDriver** com Chrome ou Firefox)

## Exemplos de execução

- Execução de todos os cenários do projeto:
  ```sh
  cucumber
  ```
- Execução de cenários por TAG:
  ```sh
  cucumber -t @cenario1
  ```

## Objetivo

O projeto foi criado para aprimorar habilidades em automação de testes web e oferecer uma base robusta para validação de aplicações. Com sua estrutura modular, ele permite fácil adição de novos cenários e funcionalidades, além de suportar fluxos de entrega contínua para melhorar a qualidade e a confiabilidade do software.

