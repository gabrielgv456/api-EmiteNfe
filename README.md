### API de Emissão de Notas Fiscais 💸

#### Descrição
Esta API foi desenvolvida para a emissão de notas fiscais, realizando todos recursos de gerar, assinar, validar e enviar notas fiscais para autorização juntamente ao SEFAZ. A aplicação é construída em Delphi, tornando-se compatível com os sistemas operacionais Windows e Linux.

#### Endpoint
- **Método:** POST
- **URL:** `http://host:port(8022 = windows)/datasnap/rest/TNfeController/emiteNFe`

#### Payload Exemplo
```json
{
	"profile": "",
	"nfe": {
		"indIntermediador": "",
		"emitente": {
			"endereco": {
				"fone": "",
				"CEP": 0,
				"complemento": ""
			}
		},
		"destinatario": {
			"ISUF": "",
			"endereco": {
				"fone": "",
				"complemento": ""
			}
		},
		"entrega": {
			"complemento": ""
		},
		"produtos": [
			{
				"extIPI": "",
				"CEST": "",
				"infAdProd": "",
				"codBarra": "",
				"codBarraTrib": "",
				"veiculo": {
					"chassi": "",
					"cor": "",
					"pot": "",
					"cilin": "",
					"pesoL": "",
					"pesoB": "",
					"nSerie": "",
					"tipoCombustivel": "",
					"motor": "",
					"CMT": "",
					"dist": "",
					"anoMod": 0,
					"anoFab": 0,
					"tipoPint": "",
					"modelo": ""
				},
				"combustivel": {
					"codigoANP": 0,
					"codIF": "",
					"qTemp": 0.00,
					"UFcons": "",
					"CIDE": {
						"qBCprod": 0.00,
						"aliqProd": 0.00,
						"vCIDE": 0.00
					},
					"ICMS": {
						"vBCICMS": 0.00,
						"vICMS": 0.00,
						"vBCICMSST": 0.00,
						"vICMSST": 0.00
					},
					"ICMSInter": {
						"vBCICMSSTDest": 0.00,
						"vICMSSTDest": 0.00
					},
					"ICMSCons": {
						"vBCICMSSTCons": 0.00,
						"vICMSSTCons": 0.00,
						"UFcons": ""
					}
				}
			}
		],
		"transportadora": {
			"CNPJCPF": "",
			"nome": "",
			"IE": "",
			"ender": "",
			"mun": "",
			"UF": "",
			"retTransp": {
				"CFOP": "",
				"munFG": 0
			},
			"volume": {
				"esp": "",
				"marca": "",
				"nVol": ""
			}
		},
		"infAdicional": {
			"infComplementar": "",
			"infAdicionalFisco": "",
			"obsComplementar": [
				{
					"campo": "",
					"texto": ""
				}
			],
			"obsFisco": [
				{
					"campo": "",
					"texto": ""
				}
			]
		},
		"exporta": {
			"UFembarq": "",
			"locEmbarq": ""
		},
		"compra": {
			"nEmp": "",
			"ped": "",
			"cont": ""
		},
		"pagamento": [
			{
				"condicao": "",
				"CNPJ": "",
				"bandeiraCartao": "",
				"codAutorizacao": ""
			}
		],
		"infIntermediador": {
			"CNPJ": "",
			"idCadIntTran": ""
		}
	}
}

```
#### Pastas
-  Cada cliente tem sua pasta em profiles/HASH_CNPJ, onde é armazenado a config de emissão, certificado digital e outras informações.
-  XMLs Enviados: Os XMLs gerados são salvos em profiles/HASH_CNPJ/xmls/enviados.

#### Detalhes Adicionais
Ao realizar a emissão com sucesso, é retornado os dados como protocolo e chave da nota fiscal. Caso ocorra algum erro durante o processo de emissão, será retornada uma resposta detalhada indicando a causa específica do erro.

🚀 Pronto para emitir suas notas fiscais com agilidade e precisão! Caso precise de mais informações sobre a estrutura do payload ou outras funcionalidades, não hesite em consultar a documentação ou entrar em contato com nossa equipe de suporte.
