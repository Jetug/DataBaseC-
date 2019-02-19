uses crt;
type
village = record
  name, dev: string[50];
  area: real;
  people: integer;
end;
type
hause = record
  name: string[50];
  num: integer;
  area: real;
  floor: integer;
  tp: string[50];
end;
type
developer = record
  name: string[50];
  prof: real;
  adr: string[100];
end;

var
vill: array[1..30] of village;
hs: array[1..300] of hause;
dev: array[1..30] of developer;
n,m,l,i:integer;
begin

  writeln();
  readln(n);
  for i:=1 to n do
  begin
    writeln('Ведите назвение посёлка');
    readln(vill[i].name);
    writeln('Ведите назвение девелопера');
    readln(vill[i].dev);
    writeln('Ведите площадь');
    readln(vill[i].area);
    writeln('Ведите количество жителей');
    readln(vill[i].people);
  end;
  
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
  writeln('----------------------------------------------------------------');
  writeln('|  Назвение посёлка  | Девелопер | Площадь | Налет | Население |');
  writeln('----------------------------------------------------------------');
  for i:=1 to n do
  begin
    writeln(vill[i].name,'  ',vill[i].dev,'  ',vill[i].area,'  ',vill[i].people);
    gotoXY(1,whereY);write('| ',vill[i].name);
    gotoXY(17,whereY);write('|  ',zp[i].tip);
    gotoXY(32,whereY);write('| ',zp[i].kol);
    gotoXY(40,whereY);write('| ',zp[i].nal);
    gotoXY(48,whereY);write('|    ',zp[i].pas);
    gotoXY(66,whereY);write('|');
  end;
  for i:=1 to m do
  begin
    writeln(hs[i].name,'  ',hs[i].num,'  ',hs[i].area,'  ',hs[i].floor,'  ',hs[i].tp);
  end;
  for i:=1 to l do
  begin
    writeln(dev[i].name,'  ',dev[i].prof,'  ',dev[i].adr);
  end;
end.