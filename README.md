### API de Emissão de Notas Fiscais 💸

#### Descrição
Esta API foi desenvolvida para a emissão de notas fiscais, realizando todos recursos de gerar, assinar, validar e enviar notas fiscais para autorização juntamente ao SEFAZ, assim como serviços de cancelamento, carta de correção, inutilização, consulta, entre outros. A aplicação é construída em Delphi, tornando-se compatível com os sistemas operacionais Windows e Linux.

#### Documentação 

Acessível em https://doc-emitenfe.safyra.com.br/
ou se preferir swagger https://doc-emitenfe.safyra.com.br/swagger

#### Autenticação
Utilizamos autenticação segura JWT com prazo de expiração de 1 dia 🔐

#### Pastas
-  Cada cliente tem sua pasta em profiles/KEY_CNPJ, onde é armazenado a config de emissão, certificado digital e outras informações.
-  XMLs Enviados: Os XMLs gerados são salvos em profiles/KEY_CNPJ/xmls/enviados.

#### Detalhes Adicionais
Ao realizar a emissão com sucesso, é retornado os dados como protocolo e chave da nota fiscal. Caso ocorra algum erro durante o processo de emissão, será retornada uma resposta detalhada indicando a causa específica do erro.

🚀 Pronto para emitir suas notas fiscais com agilidade e precisão! Caso precise de mais informações sobre a estrutura do payload ou outras funcionalidades, não hesite em consultar a documentação ou entrar em contato com nossa equipe de suporte.
