unit JsonUtils;

interface
   uses Data.DBXPlatform, JSON, System.Classes, System.SysUtils, System.Generics.Collections,
   System.NetEncoding;

   procedure JSONResponse(const AIDCode: Integer; const AContent: string);
   function containsProperty(Objeto: TJSONObject; chave: string): Boolean;
   function iif(condition: Boolean; rVerdade: Variant; rFalso: Variant): Variant;
   function loadFile(const pathFile: string): string;
   function generateHash : string;
   function validateAllProperties(obj : TJSONObject; propertiesObject: TArray<string>) : string;
   function textBeforeOrAfterCharacter(out ok : boolean;TextOriginal, Character: string; GetBefore: Boolean): string;
   function Base64SaveFile(out ok : Boolean; base64, sArq: string) : string;
   function ParseIsoDateTime(const S: string): TDateTime;
implementation

procedure JSONResponse(const AIDCode: Integer; const AContent: string);
begin
  GetInvocationMetadata().ResponseCode    := AIDCode;
  GetInvocationMetadata().ResponseContent :=  AContent;
end;

function containsProperty(Objeto: TJSONObject; chave: string): Boolean;
var
   i: Integer;
   sAux : string;
begin
   Result := False;
   for i := 0 to Objeto.Count -1 do begin
      sAux := Objeto.Pairs[i].JsonString.ToString;
      if sAux = '"' + chave + '"' then begin
         Result := True;
         Break;
      end;
   end;
end;

function validateAllProperties(obj : TJSONObject; propertiesObject: TArray<string>) : string;
var i: Integer;
begin
   for i := Low(propertiesObject) to High(propertiesObject) do  begin
      Result := Result + iif(containsProperty(obj,propertiesObject[i]), '', iif(result <> '',', ','') + propertiesObject[i]  );
   end;
   if Result <> '' then raise Exception.Create('Propriedade(s) ' + Result + ' obrigatória(s)! Verifique nossa documentação para obter detalhes.'  );
end;

function iif(condition: Boolean; rVerdade: Variant; rFalso: Variant): Variant;
begin
  if condition then Result:=rVerdade else Result:=rFalso;
end;


function loadFile(const pathFile: string): string;
var
  ArquivoXML: TStringList;
begin
  ArquivoXML := TStringList.Create;
  try
    ArquivoXML.LoadFromFile(pathFile);
    Result := ArquivoXML.Text;
  finally
    ArquivoXML.Free;
  end;
end;

procedure deleteFile(const CaminhoArquivo: string);
begin
   if FileExists(CaminhoArquivo) then DeleteFile(CaminhoArquivo)
end;


function generateHash: string;
var
  GUID: TGUID;
begin
  CreateGUID(GUID);
  Result := GUIDToString(GUID);
end;

function TextBeforeOrAfterCharacter(out ok: boolean;TextOriginal, Character: string; GetBefore: Boolean): string;
var
  Position: Integer;
  ResultText: string;
begin
  Position := Pos(Character, TextOriginal);

  if Position > 0 then
  begin
    if GetBefore then
      ResultText := Copy(TextOriginal, 1, Position - 1)
    else
      ResultText := Copy(TextOriginal, Position + Length(Character), MaxInt);
    ok:= True;
  end
  else
   ok := False;

  Result := ResultText;
end;


function Base64SaveFile(out ok : Boolean; base64, sArq: string) : string;
var
   lInput   : TStringStream;
   lOutput  : TMemoryStream;
begin
   ok := False;
   if FileExists(sArq) then
      DeleteFile(pchar(sArq));
   lInput   := TStringStream.Create(base64);
   lOutput  := TMemoryStream.Create;
   try
      try
         lInput.Position := 0;
         TNetEncoding.Base64.Decode(lInput, lOutput);
         lOutput.SaveToFile(sArq);
         ok := True;
         Result := sArq;
      except on E:Exception do
         begin
            ok := False;
            Result := 'Falha ao descriptografar e/ou salvar arquivo! ' + E.Message;
         end;
      end;
   finally
      FreeAndNil(lInput);
      FreeAndNil(lOutput);
   end;
end;

function ParseIsoDateTime(const S: string): TDateTime;
var
  T: string;
  Y, M, D, Hh, Mm, Ss: Integer;
begin
  // aceita "2026-08-06T17:30:00.000Z" ou "...-03:00"
  T := StringReplace(S, 'Z', '', [rfReplaceAll]);
  if Pos('+', T) > 11 then
    T := Copy(T, 1, Pos('+', T) - 1);
  // corta offset "-03:00" no final (após a parte da hora)
  if (Length(T) > 19) and (T[Length(T) - 5] = '-') and (T[Length(T) - 2] = ':') then
    T := Copy(T, 1, Length(T) - 6);

  Y  := StrToInt(Copy(T, 1, 4));
  M  := StrToInt(Copy(T, 6, 2));
  D  := StrToInt(Copy(T, 9, 2));
  Hh := StrToInt(Copy(T, 12, 2));
  Mm := StrToInt(Copy(T, 15, 2));
  Ss := StrToInt(Copy(T, 18, 2));
  Result := EncodeDate(Y, M, D) + EncodeTime(Hh, Mm, Ss, 0);
end;




end.
