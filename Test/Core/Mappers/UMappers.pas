unit UMappers;

interface

uses
  TestFramework;

type
  TMapperTests = class(TTestCase)
  published
    procedure TestDataToModel;
    procedure TestModelToData;
    procedure TestListDataToModel;
    procedure TestListModelToData;
  end;

implementation

{ TMapperTests }

procedure TMapperTests.TestDataToModel;
begin

end;

procedure TMapperTests.TestListDataToModel;
begin

end;

procedure TMapperTests.TestListModelToData;
begin

end;

procedure TMapperTests.TestModelToData;
begin

end;

initialization
  RegisterTest('Core', TMapperTests.Suite);

end.
