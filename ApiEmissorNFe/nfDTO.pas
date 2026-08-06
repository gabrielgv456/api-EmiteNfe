unit nfDTO;

interface

uses Generics.Collections, REST.Json.Types;

type
  TEnderecoDTO = class
  private
    FBairro: string;
    FCEP: Integer;
    FLogradouro: string;
    FNomeMunicipio: string;
    FUF: string;
    FComplemento: string;
    FNumero: string;
    FCodMunicipio: Integer;
    FFone: string;
  public
    property Bairro: string read FBairro write FBairro;
    property CEP: Integer read FCEP write FCEP;
    property Logradouro: string read FLogradouro write FLogradouro;
    property NomeMunicipio: string read FNomeMunicipio write FNomeMunicipio;
    property UF: string read FUF write FUF;
    property Complemento: string read FComplemento write FComplemento;
    property Numero: string read FNumero write FNumero;
    property CodMunicipio: Integer read FCodMunicipio write FCodMunicipio;
    property Fone: string read FFone write FFone;
  end;

  TEmitenteDTO = class
  private
    FCNPJCPF: string;
    FCRT: Integer;
    FNomeFantasia: string;
    FIE: string;
    FRazaoSocial: string;
    FEndereco: TEnderecoDTO;
  public
    property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
    property CRT: Integer read FCRT write FCRT;
    property NomeFantasia: string read FNomeFantasia write FNomeFantasia;
    property IE: string read FIE write FIE;
    property RazaoSocial: string read FRazaoSocial write FRazaoSocial;
    property Endereco: TEnderecoDTO read FEndereco write FEndereco;
  end;

  TDestinatarioDTO = class
  private
    FCNPJCPF: string;
    FIE: string;
    FNome: string;
    FIndIEDest: Integer;
    FISUF: string;
    FEndereco: TEnderecoDTO;
  public
    property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
    property IE: string read FIE write FIE;
    property Nome: string read FNome write FNome;
    property IndIEDest: Integer read FIndIEDest write FIndIEDest;  //['1', '2', '9'], [inContribuinte, inIsento, inNaoContribuinte]);
    property ISUF: string read FISUF write FISUF;
    property Endereco: TEnderecoDTO read FEndereco write FEndereco;
  end;

  type
  TEntregaDTO = class
  private
    FTipo: string;
    FBairro: string;
    FCEP: Int64;
    FLogradouro: string;
    FNomeMunicipio: string;
    FNumero: string;
    FComplemento: string;
    FUF: string;
    FCodMunicipio: Integer;
    FCNPJCPF: string;
  public
    property Tipo: string read FTipo write FTipo;
    property Bairro: string read FBairro write FBairro;
    property CEP: Int64 read FCEP write FCEP;
    property Logradouro: string read FLogradouro write FLogradouro;
    property NomeMunicipio: string read FNomeMunicipio write FNomeMunicipio;
    property Numero: string read FNumero write FNumero;
    property Complemento: string read FComplemento write FComplemento;
    property UF: string read FUF write FUF;
    property CodMunicipio: Integer read FCodMunicipio write FCodMunicipio;
    property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
  end;



  type
  TICMSDTO = class
  private
    FCSOSN: string;
    FCST: string;
    FmodBC: string;
    FmotDesICMS: string;
    FpICMS: Double;
    FpRedBC: Double;
    FvBC: Double;
    FvICMS: Double;
    FpFCP: Double;
    FvFCP: Double;
    FpCredSN: Double;
    FmodBCST: string;
    FpFCPST: Double;
    FpFCPSTRet: Double;
    FvFCPST: Double;
    FvFCPSTRet: Double;
    FpICMSEfet: Double;
    FpICMSST: Double;
    FpMVAST: Double;
    FpRedBCEfet: Double;
    FpRedBCST: Double;
    FpST: Double;
    FvBCEfet: Double;
    FvBCFCPST: Double;
    FvBCFCPSTRet: Double;
    FvBCST: Double;
    FvBCSTRet: Double;
    FvICMSEfet: Double;
    FvICMSST: Double;
    FvICMSSTDeson: Double;
    FvICMSSTRet: Double;
    FvICMSSubstituto: Double;
  public
    property CSOSN: string read FCSOSN write FCSOSN;
    property CST: string read FCST write FCST;
    property modBC: string read FmodBC write FmodBC;
    property motDesICMS: string read FmotDesICMS write FmotDesICMS;
    property pICMS: Double read FpICMS write FpICMS;
    property pRedBC: Double read FpRedBC write FpRedBC;
    property vBC: Double read FvBC write FvBC;
    property vICMS: Double read FvICMS write FvICMS;
    property pFCP: Double read FpFCP write FpFCP;
    property vFCP: Double read FvFCP write FvFCP;
    property pCredSN: Double read FpCredSN write FpCredSN;
    property modBCST: string read FmodBCST write FmodBCST;
    property pFCPST: Double read FpFCPST write FpFCPST;
    property pFCPSTRet: Double read FpFCPSTRet write FpFCPSTRet;
    property vFCPST: Double read FvFCPST write FvFCPST;
    property vFCPSTRet: Double read FvFCPSTRet write FvFCPSTRet;
    property pICMSEfet: Double read FpICMSEfet write FpICMSEfet;
    property pICMSST: Double read FpICMSST write FpICMSST;
    property pMVAST: Double read FpMVAST write FpMVAST;
    property pRedBCEfet: Double read FpRedBCEfet write FpRedBCEfet;
    property pRedBCST: Double read FpRedBCST write FpRedBCST;
    property pST: Double read FpST write FpST;
    property vBCEfet: Double read FvBCEfet write FvBCEfet;
    property vBCFCPST: Double read FvBCFCPST write FvBCFCPST;
    property vBCFCPSTRet: Double read FvBCFCPSTRet write FvBCFCPSTRet;
    property vBCST: Double read FvBCST write FvBCST;
    property vBCSTRet: Double read FvBCSTRet write FvBCSTRet;
    property vICMSEfet: Double read FvICMSEfet write FvICMSEfet;
    property vICMSST: Double read FvICMSST write FvICMSST;
    property vICMSSTDeson: Double read FvICMSSTDeson write FvICMSSTDeson;
    property vICMSSTRet: Double read FvICMSSTRet write FvICMSSTRet;
    property vICMSSubstituto: Double read FvICMSSubstituto write FvICMSSubstituto;
  end;

  TCOFINSDTO = class
  private
    FCST: string;
    FpCOFINS: Double;
    FvBC: Double;
    FvCOFINS: Double;
    FvAliqProd: Double;
    FqBCProd: Double;
  public
    property CST: string read FCST write FCST;
    property pCOFINS: Double read FpCOFINS write FpCOFINS;
    property vBC: Double read FvBC write FvBC;
    property vCOFINS: Double read FvCOFINS write FvCOFINS;
    property vAliqProd: Double read FvAliqProd write FvAliqProd;
    property qBCProd: Double read FqBCProd write FqBCProd;
  end;

  TPISDTO = class
  private
    FCST: string;
    FpPIS: Double;
    FvBC: Double;
    FvPIS: Double;
    FvAliqProd: Double;
    FqBCProd: Double;
  public
    property CST: string read FCST write FCST;
    property pPIS: Double read FpPIS write FpPIS;
    property vBC: Double read FvBC write FvBC;
    property vPIS: Double read FvPIS write FvPIS;
    property vAliqProd: Double read FvAliqProd write FvAliqProd;
    property qBCProd: Double read FqBCProd write FqBCProd;
  end;

  TIPIDTO = class
  private
    FCST: string;
    FcEnq: string;
    FclEnq: string;
    FCNPJProd: string;
    FcSelo: string;
    FqSelo: integer;
    FvBC: Double;
    FpIPI: Double;
    FvIPI: Double;
  public
    property CST: string read FCST write FCST;
    property cEnq: string read FcEnq write FcEnq;
    property clEnq: string read FclEnq write FclEnq;
    property CNPJProd: string read FCNPJProd write FCNPJProd;
    property cSelo: string read FcSelo write FcSelo;
    property qSelo: integer read FqSelo write FqSelo;
    property vBC: Double read FvBC write FvBC;
    property pIPI: Double read FpIPI write FpIPI;
    property vIPI: Double read FvIPI write FvIPI;
  end;

  TICMSUFDestDTO = class
  private
    FpFCPUFDest: Double;
    FpICMSInter: Double;
    FpICMSInterPart: Double;
    FpICMSUFDest: Double;
    FvBCUFDest: Double;
    FvFCPUFDest: Double;
    FvICMSUFDest: Double;
    FvICMSUFRemet: Double;
  public
    property pFCPUFDest: Double read FpFCPUFDest write FpFCPUFDest;
    property pICMSInter: Double read FpICMSInter write FpICMSInter;
    property pICMSInterPart: Double read FpICMSInterPart write FpICMSInterPart;
    property pICMSUFDest: Double read FpICMSUFDest write FpICMSUFDest;
    property vBCUFDest: Double read FvBCUFDest write FvBCUFDest;
    property vFCPUFDest: Double read FvFCPUFDest write FvFCPUFDest;
    property vICMSUFDest: Double read FvICMSUFDest write FvICMSUFDest;
    property vICMSUFRemet: Double read FvICMSUFRemet write FvICMSUFRemet;
  end;


    // --- Reforma tributária (IBS/CBS/IS) — JSON: imposto.reforma ---

   TISDTO = class
   private
     FCST: string;
     FcClassTrib: string;
     FpIS: Double;
   public
     property CST: string read FCST write FCST;
     property cClassTrib: string read FcClassTrib write FcClassTrib;
     property pIS: Double read FpIS write FpIS;
   end;

   TIBSCBSDTO = class
   private
     FCST: string;
     FcClassTrib: string;
     FvBC: Double;
     FpCBS: Double;
     FpDifCBS: Double;
     FpRedCBS: Double;
     FvCBS: Double;
     FpIBSUF: Double;
     FpDifIBSUF: Double;
     FpRedIBSUF: Double;
     FvIBSUF: Double;
     FpIBSMun: Double;
     FpDifIBSMun: Double;
     FpRedIBSMun: Double;
     FvIBSMun: Double;
     FvIBS: Double;
   public
     property CST: string read FCST write FCST;
     property cClassTrib: string read FcClassTrib write FcClassTrib;
     property vBC: Double read FvBC write FvBC;
     property pCBS: Double read FpCBS write FpCBS;
     property pDifCBS: Double read FpDifCBS write FpDifCBS;
     property pRedCBS: Double read FpRedCBS write FpRedCBS;
     property vCBS: Double read FvCBS write FvCBS;
     property pIBSUF: Double read FpIBSUF write FpIBSUF;
     property pDifIBSUF: Double read FpDifIBSUF write FpDifIBSUF;
     property pRedIBSUF: Double read FpRedIBSUF write FpRedIBSUF;
     property vIBSUF: Double read FvIBSUF write FvIBSUF;
     property pIBSMun: Double read FpIBSMun write FpIBSMun;
     property pDifIBSMun: Double read FpDifIBSMun write FpDifIBSMun;
     property pRedIBSMun: Double read FpRedIBSMun write FpRedIBSMun;
     property vIBSMun: Double read FvIBSMun write FvIBSMun;
     property vIBS: Double read FvIBS write FvIBS;
   end;

   TReformaDTO = class
   private
     FIS: TISDTO;
     FIBSCBS: TIBSCBSDTO;
   public
     [JSONName('IS')]
     property ImpostoSeletivo: TISDTO read FIS write FIS;
     property IBSCBS: TIBSCBSDTO read FIBSCBS write FIBSCBS;
   end;

  TImpostoDTO = class
  private
    FOrigemMercadoria: string;
    FICMS: TICMSDTO;
    FCOFINS: TCOFINSDTO;
    FPIS: TPISDTO;
    FIPI: TIPIDTO;
    FICMSUFDest: TICMSUFDestDTO;
    FvTotTrib: Double;
    FReforma: TReformaDTO;
  public
    property OrigemMercadoria: string read FOrigemMercadoria write FOrigemMercadoria;
    property ICMS: TICMSDTO read FICMS write FICMS;
    property COFINS: TCOFINSDTO read FCOFINS write FCOFINS;
    property PIS: TPISDTO read FPIS write FPIS;
    property IPI: TIPIDTO read FIPI write FIPI;
    property ICMSUFDest: TICMSUFDestDTO read FICMSUFDest write FICMSUFDest;
    property vTotTrib: Double read FvTotTrib write FvTotTrib;
    property reforma: TReformaDTO read FReforma write FReforma;
  end;

  TProdutoDTO = class
   private
    FDescricao: string;
    FCodigo: string;
    FCodBarra: string;
    FCodBarraTrib: string;
    FEAN: string;
    FEANTrib: string;
    FQuantidade: Double;
    FQuantidadeTrib: Double;
    FNCM: string;
    FCEST: string;
    FUnidade: string;
    FUnidadeTrib: string;
    FValorTotalProdutos: Double;
    FValorDesconto: Double;
    FValorUnitarioComerc: Double;
    FValorUnitarioTrib: Double;
    FInfAdProd: string;
    FCFOP: string;
    FExtIPI: string;
    FValorSeguro: Double;
    FValorFrete: Double;
    FValorOutro: Double;
    FImposto: TImpostoDTO;
  public
    property Descricao: string read FDescricao write FDescricao;
    property Codigo: string read FCodigo write FCodigo;
    property CodBarra: string read FCodBarra write FCodBarra;
    property CodBarraTrib: string read FCodBarraTrib write FCodBarraTrib;
    property EAN: string read FEAN write FEAN;
    property EANTrib: string read FEANTrib write FEANTrib;
    property Quantidade: Double read FQuantidade write FQuantidade;
    property QuantidadeTrib: Double read FQuantidadeTrib write FQuantidadeTrib;
    property NCM: string read FNCM write FNCM;
    property CEST: string read FCEST write FCEST;
    property Unidade: string read FUnidade write FUnidade;
    property UnidadeTrib: string read FUnidadeTrib write FUnidadeTrib;
    property ValorTotalProdutos: Double read FValorTotalProdutos write FValorTotalProdutos;
    property ValorDesconto: Double read FValorDesconto write FValorDesconto;
    property ValorUnitarioComerc: Double read FValorUnitarioComerc write FValorUnitarioComerc;
    property ValorUnitarioTrib: Double read FValorUnitarioTrib write FValorUnitarioTrib;
    property InfAdProd: string read FInfAdProd write FInfAdProd;
    property CFOP: string read FCFOP write FCFOP;
    property ExtIPI: string read FExtIPI write FExtIPI;
    property ValorSeguro: Double read FValorSeguro write FValorSeguro;
    property ValorFrete: Double read FValorFrete write FValorFrete;
    property ValorOutro: Double read FValorOutro write FValorOutro;
    property imposto: TImpostoDTO read FImposto write FImposto;
  end;

  TPagamentoDTO = class
  private
    FForma: string;
    FCondicao: string;
    FValor: Double;
  public
    property Forma: string read FForma write FForma;
    property Condicao: string read FCondicao write FCondicao;
    property Valor: Double read FValor write FValor;
  end;

  TInfAdicionalDTO = class
  private
    FInfAdicionalFisco: string;
    FInfComplementar: string;
  public
    property InfAdicionalFisco: string read FInfAdicionalFisco write FInfAdicionalFisco;
    property InfComplementar: string read FInfComplementar write FInfComplementar;
  end;

  TICMSTotalDTO = class
  private
    FvNF: Currency;
    FvBC: Currency;
    FvBCST: Currency;
    FvCOFINS: Currency;
    FvDesc: Currency;
    FvFCPST: Currency;
    FvFCPSTRet: Currency;
    FvFCPUFDest: Currency;
    FvFrete: Currency;
    FvICMS: Currency;
    FvICMSUFDest: Currency;
    FvICMSUFRemet: Currency;
    FvII: Currency;
    FvIPI: Currency;
    FvOutro: Currency;
    FvPIS: Currency;
    FvProd: Currency;
    FvSeg: Currency;
    FvST: Currency;
    FvTotTrib: Currency;
  public
    property vNF: Currency read FvNF write FvNF;
    property vBC: Currency read FvBC write FvBC;
    property vBCST: Currency read FvBCST write FvBCST;
    property vCOFINS: Currency read FvCOFINS write FvCOFINS;
    property vDesc: Currency read FvDesc write FvDesc;
    property vFCPST: Currency read FvFCPST write FvFCPST;
    property vFCPSTRet: Currency read FvFCPSTRet write FvFCPSTRet;
    property vFCPUFDest: Currency read FvFCPUFDest write FvFCPUFDest;
    property vFrete: Currency read FvFrete write FvFrete;
    property vICMS: Currency read FvICMS write FvICMS;
    property vICMSUFDest: Currency read FvICMSUFDest write FvICMSUFDest;
    property vICMSUFRemet: Currency read FvICMSUFRemet write FvICMSUFRemet;
    property vII: Currency read FvII write FvII;
    property vIPI: Currency read FvIPI write FvIPI;
    property vOutro: Currency read FvOutro write FvOutro;
    property vPIS: Currency read FvPIS write FvPIS;
    property vProd: Currency read FvProd write FvProd;
    property vSeg: Currency read FvSeg write FvSeg;
    property vST: Currency read FvST write FvST;
    property vTotTrib: Currency read FvTotTrib write FvTotTrib;
  end;

  TIBSCBSTotDTO = class
     private
       FvBCIBSCBS: Currency;
       FvIBSUF: Currency;
       FvIBSMun: Currency;
       FvIBS: Currency;
       FvCBS: Currency;
     public
       property vBCIBSCBS: Currency read FvBCIBSCBS write FvBCIBSCBS;
       property vIBSUF: Currency read FvIBSUF write FvIBSUF;
       property vIBSMun: Currency read FvIBSMun write FvIBSMun;
       property vIBS: Currency  read FvIBS write FvIBS;
       property vCBS: Currency  read FvCBS write FvCBS;
  end;

  TISTotDTO = class
     private
       FvIS: Currency;
     public
       property vIS: Currency read FvIS write FvIS;
  end;

  TTotalDTO = class
  private
    FICMS: TICMSTotalDTO;
    FIBSCBSTot: TIBSCBSTotDTO;
    FISTot: TISTotDTO;
  public
    property ICMS: TICMSTotalDTO read FICMS write FICMS;
    property IBSCBSTot: TIBSCBSTotDTO read FIBSCBSTot write FIBSCBSTot;
    property ISTot: TISTotDTO read FISTot write FISTot;
  end;


  TObsDTO = class
  private
    Fcampo: string;
    Ftexto: string;
  public
    property campo: string read Fcampo write Fcampo;
    property texto: string read Ftexto write Ftexto;
  end;

  TAutXMLDTO = class
  private
     FCNPJCPF: string;
  public
     property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
  end;

  TNotaFiscalDTO = class
  private
    FCertificadoSenha: string;
    FCodCSC: string;
    FAmbiente: string;
    FcMunFG: Integer;
    FcUF: string;
    FFinalidadeNFe: string;
    FIndFinal: string;
    FIndPresenca: string;
    FIndPag: string;
    FNatOp: string;
    FTpEmis: string;
    FTpNF: Integer;
    FSerie: Integer;
    FnNF: Integer;
    FEmitente: TEmitenteDTO;
    FDestinatario: TDestinatarioDTO;
    FEntrega: TEntregaDTO;
    FProdutos: TArray<TProdutoDTO>;
    FPagamento: TArray<TPagamentoDTO>;
    FInfAdicional: TInfAdicionalDTO;
    FTotal: TTotalDTO;
    FobsComplementar: TArray<TObsDTO>;
    FobsFisco: TArray<TObsDTO>;
    FIndIntermediador: string;
    FModFrete: string;
    FCNPJCPF: string;
    FAutXML: TArray<TAutXMLDTO>;
  public
    property CertificadoSenha: string read FCertificadoSenha write FCertificadoSenha;
    property CodCSC: string read FCodCSC write FCodCSC;
    property Ambiente: string read FAmbiente write FAmbiente; // ['1', '2'], [taProducao, taHomologacao]);
    property cMunFG: Integer read FcMunFG write FcMunFG;
    property cUF: string read FcUF write FcUF;
    property FinalidadeNFe: string read FFinalidadeNFe write FFinalidadeNFe; // ['1', '2', '3', '4'],  [fnNormal, fnComplementar, fnAjuste, fnDevolucao])
    property IndFinal: string read FIndFinal write FIndFinal; //['0', '1'],[cfNao, cfConsumidorFina]
    property IndPresenca: string read FIndPresenca write FIndPresenca;
    property IndPag: string read FIndPag write FIndPag; // ['0', '1', '2', ''], [ipVista, ipPrazo, ipOutras, ipNenhum]);
    property NatOp: string read FNatOp write FNatOp;
    property TpEmis: string read FTpEmis write FTpEmis; // teNormal, teContingencia, teSCAN, teDPEC, teFSDA, teSVCAN, teSVCRS, teSVCSP, teOffLine
    property TpNF: Integer read FTpNF write FTpNF; //  ['0', '1'], [tnEntrada, tnSaida]);
    property Serie: Integer read FSerie write FSerie;
    property nNF: Integer read FnNF write FnNF;
    property Emitente: TEmitenteDTO read FEmitente write FEmitente;
    property Destinatario: TDestinatarioDTO read FDestinatario write FDestinatario;
    property Entrega: TEntregaDTO read FEntrega write FEntrega;
    property Produtos: Tarray<TProdutoDTO> read FProdutos write FProdutos;
    property Pagamento: TArray<TPagamentoDTO> read FPagamento write FPagamento;
    property InfAdicional: TInfAdicionalDTO read FInfAdicional write FInfAdicional;
    property Total: TTotalDTO read FTotal write FTotal;
    property obsComplementar: TArray<TObsDTO> read FobsComplementar write FobsComplementar;
    property obsFisco: TArray<TObsDTO> read FobsFisco write FobsFisco;
    property IndIntermediador: string read FIndIntermediador write FIndIntermediador;
    property modFrete: string read FModFrete write FModFrete;
    property AutXml: TArray<TAutXMLDTO> read FAutXML write FAutXML;
  end;





  implementation



  end.
