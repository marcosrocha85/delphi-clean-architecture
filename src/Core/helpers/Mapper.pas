unit Mapper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Generics.Collections, Vcl.StdCtrls;

type
  IMapper<D: class; M: class> = interface
    function DataToModel(AData: D): M;
    function ModelToData(AModel: M): D;
  end;

  TListMapper<D: class; M: class> = class
  private
    FMapper: IMapper<D, M>;
  public
    constructor Create(AMapper: IMapper<D, M>);
    function DataToModel(AListData: TObjectList<D>): TObjectList<M>;
    function ModelToData(AListModel: TObjectList<M>): TObjectList<D>;
  end;

implementation

{ TListMapper<D, M> }

constructor TListMapper<D, M>.Create(AMapper: IMapper<D, M>);
begin
  FMapper := AMapper;
end;

function TListMapper<D, M>.DataToModel(AListData: TObjectList<D>): TObjectList<M>;
var
  I: Integer;
begin
  Result := TObjectList<M>.Create;
  for I := 0 to AListData.Count - 1 do
  begin
    Result.Add(FMapper.DataToModel(AListData[I]));
  end;
end;

function TListMapper<D, M>.ModelToData(AListModel: TObjectList<M>): TObjectList<D>;
var
  I: Integer;
begin
  Result := TObjectList<D>.Create;
  for I := 0 to AListModel.Count - 1 do
  begin
    Result.Add(FMapper.ModelToData(AListModel[I]));
  end;
end;

end.