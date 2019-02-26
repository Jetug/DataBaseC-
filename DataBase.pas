unit DataBase;
interface
  procedure read_village();
  procedure read_hause();
  procedure read_developer();
implementation
uses crt;
type
village = record
  name, dev: string[20];
  area: real;
  people: integer;
end;
type
hause = record
  name: string[20];
  num: integer;
  area: real;
  floor: integer;
  tp: string[20];
end;
type
developer = record
  name: string[23];
  prof: real;
  adr: string[22];
end;

var
vill: array[1..30] of village;
hs: array[1..300] of hause;
dev: array[1..30] of developer;
//n,m,l,i:integer;
base: text;

procedure read_village();
var i,n:integer;
begin
  writeln('Ведите количество посёлков');
  readln(n);
  for i:=1 to n do
  begin
    writeln('Ведите назвение посёлка');
    readln(vill[i].name);
    writeln('Ведите назвение девелопера');  
    readln(vill[i].dev);
    writeln('Ведите площадь посёлка в квадратных метрах');
    readln(vill[i].area);
    writeln('Ведите количество жителей');
    readln(vill[i].people);
  end;
  writeln('------------------------------------------------------------------------');
end;
procedure read_hause();
var i,m:integer;
begin
  writeln('Ведите количество домов');
  readln(m);
  for i:=1 to m do
  begin
    writeln('Ведите назвение посёлка');
    readln(hs[i].name);
    writeln('Ведите номер дома');
    readln(hs[i].num);
    writeln('Ведите дома');
    readln(hs[i].area);
    writeln('Ведите количество этажей');
    readln(hs[i].floor);
    writeln('Ведите тип дома');
    readln(hs[i].tp);
  end;
  writeln('------------------------------------------------------------------------');
end;
procedure read_developer();
var i,l:integer;
begin
  writeln('Ведите количество девелоперов');
  readln(l);  
  for i:=1 to l do
  begin
    writeln('Ведите назвение девелопера');
    readln(dev[i].name);
    writeln('Ведите доход');
    readln(dev[i].prof);
    writeln('Ведите адрес');
    readln(dev[i].adr);
  end;
end;
end.