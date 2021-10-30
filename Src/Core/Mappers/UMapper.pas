unit UMapper;

interface

uses
  Classes, Generics.Collections;

type
  TMapper<MODEL: class; DATA: class> = class(TObject)
  public
    function DataToModel(const AData: DATA): MODEL; overload; virtual; abstract;
    function ModelToData(const AModel: MODEL): DATA; overload; virtual; abstract;

    function DataToModel(const AListData: TObjectList<DATA>): TObjectList<MODEL>; overload;
    function ModelToData(const AListModel: TObjectList<MODEL>): TObjectList<DATA>; overload;
  end;

implementation

{ TMapper<MODEL, DATA> }

function TMapper<MODEL, DATA>.DataToModel(const AListData: TObjectList<DATA>): TObjectList<MODEL>;
var
  Index: Integer;
begin
  Result := TObjectList<MODEL>.Create;
  for Index := 0 to AListData.Count - 1 do
  begin
    Result.Add(DataToModel(AListData[Index]));
  end;
end;

function TMapper<MODEL, DATA>.ModelToData(const AListModel: TObjectList<MODEL>): TObjectList<DATA>;
var
  Index: Integer;
begin
  Result := TObjectList<DATA>.Create;
  for Index := 0 to AListModel.Count - 1 do
  begin
    Result.Add(ModelToData(AListModel[Index]));
  end;
end;

end.
