unit Verb;

interface

const
  past    = 1;
  present = 2;
  future  = 3;
  vowels = ['а','е','Є','и','о','у','э','ю','€'];

function CaseEditor (verb : string; tense, cas : integer ) : string;

implementation

function CaseEditor (verb : string; tense, cas : integer) : string;
var
  s, str : string;
begin
  s := verb;
  case tense of
  present:
    if s = 'быть' then
          CaseEditor:='есть'
    else
    begin
    //////////////////////////////////////////////
      if (pos('атьс€',s)=length(s)-4) and (length(s)>5) then
       begin
        str:=copy(s,1,length(s)-5);
        if (s='смотатьс€') then
        begin
          case cas of
            1 : s :='юсь';
            2 : s :='ешс€';
            3 : s :='етс€';
            4 : s :='емс€';
            5 : s :='етесь';
            6 : s :='ютс€';
          end;
          CaseEditor:=str+'a'+s;
        end
        else
        begin
          case cas of
            1 : s :='усь';
            2 : s :='Єшс€';
            3 : s :='Єтс€';
            4 : s :='Ємс€';
            5 : s :='Єтесь';
            6 : s :='утс€';
          end;
          CaseEditor:=str+s;
        end;
       end
      ///////////////////////////////////////////////
      else if (pos('€тьс€',s)=length(s)-4) and (length(s)>5) then
       begin
        str:=copy(s,1,length(s)-5);
        if str[length(str)] in vowels then
        begin
          case cas of
            1 : s :='юсь';
            2 : s :='ишс€';
            3 : s :='итс€';
            4 : s :='имс€';
            5 : s :='итесь';
            6 : s :='€тс€';
          end;
          CaseEditor:=str+s;
        end
        else
        begin
          case cas of
            1 : s :='€юсь';
            2 : s :='€ешс€';
            3 : s :='€етс€';
            4 : s :='€емс€';
            5 : s :='€етесь';
            6 : s :='€ютс€';
          end;
          CaseEditor:=str+s;
        end;
       end
      //////////////////////////////////////////////
      else if (pos('ить',s)=length(s)-2) or (pos('еть',s)=length(s)-2) then
         if (s = 'иметь') then
                        begin
                           case cas of
                           1 : s := 'имею';
                           2 : s := 'имеешь';
                           3 : s := 'имеет';
                           4 : s := 'имеем';
                           5 : s := 'имеете';
                           6 : s := 'имеют';
                           end;
                           CaseEditor:=s;
                        end
                        else
                        begin
                         str:=copy(s,1,length(s)-3);
                         if (length(s) = 4) then
                         if (pos('ить',s)=length(s)-2) then str := str + 'ь' else str := str + 'о';
                         case cas of
                          1:begin
                             if str[length(str)]='д' then str:=copy(str,1,length(str)-1)+'ж';
                             if str[length(str)]='с' then str:=copy(str,1,length(str)-1)+'ш';
                             if str[length(str)]='т' then str:=copy(str,1,length(str)-1)+'ч';
                             if (str[length(str)]='ч') or (str[length(str)]='ш') or (str[length(str)]='ж') then s:='у' else
                             if (pos('ов',str) = length(str)-1) then s := 'лю'
                             else if str[length(str)] = 'б' then s := 'лю' else s:='ю';
                            end;
                          2:s:='ишь';
                          3:s:='ит';
                          4:s:='им';
                          5:s:='ите';
                          6:if (str[length(str)]='ч') or (str[length(str)]='ш') or (str[length(str)]='щ') then s:='ат' else s:='€т';
                         end;
                         CaseEditor:=str+s;
                        end
      //////////////////////////////////////////////////////
      else if pos('ать',s)=length(s)-2 then
                       begin
                         str:=copy(s,1,length(s)-3);
                         if str[length(str)]='х' then str:=copy(str,1,length(str)-1)+'д';
                         if str[length(str)]='з' then str:=copy(str,1,length(str)-1)+'j';
                         if (s='ехать') or (s='ебать') or (s='лизать') then
                         begin
                           case cas of
                           1 : s := 'у';
                           2 : s := 'Єшь';
                           3 : s := 'Єт';
                           4 : s := 'Єм';
                           5 : s := 'Єте';
                           6 : s := 'ут';
                           end;
                           CaseEditor:=str+s;
                         end
                         else
                         if (s='трещать') then
                         begin
                           case cas of
                           1 : s := 'у';
                           2 : s := 'ишь';
                           3 : s := 'ит';
                           4 : s := 'им';
                           5 : s := 'ите';
                           6 : s := 'ат';
                           end;
                           CaseEditor:=str+s;
                         end
                         else
                         if (s='брать') then
                         begin
                           case cas of
                           1 : s := 'беру';
                           2 : s := 'берЄшь';
                           3 : s := 'берЄт';
                           4 : s := 'берЄм';
                           5 : s := 'берЄте';
                           6 : s := 'берут';
                           end;
                           CaseEditor:=s;
                         end
                         else
                         if (s='давать') then
                         begin
                           case cas of
                           1 : s := 'даю';
                           2 : s := 'даЄшь';
                           3 : s := 'даЄт';
                           4 : s := 'даЄм';
                           5 : s := 'даЄте';
                           6 : s := 'дают';
                           end;
                           CaseEditor:=str+s;
                         end
                         else
                         if (pos('ов',str)=length(str)-1) then
                         begin
                           delete(str,length(str)-1,2);
                           case cas of
                           1 : s := 'ую';
                           2 : s := 'уешь';
                           3 : s := 'ует';
                           4 : s := 'уем';
                           5 : s := 'уете';
                           6 : s := 'уют';
                           end;
                           CaseEditor:=str+s;
                         end
                         else
                         begin
                           case cas of
                           1 : s := 'аю';
                           2 : s := 'аешь';
                           3 : s := 'ает';
                           4 : s := 'аем';
                           5 : s := 'аете';
                           6 : s := 'ают';
                           end;
                           CaseEditor:=str+s;
                         end;

                       end
      else if pos('€ть',s)=length(s)-2 then
                       begin
                         str:=copy(s,1,length(s)-3);
                         if str[length(str)] in vowels then
                           case cas of
                           1 : s := 'ю';
                           2 : s := 'ишь';
                           3 : s := 'ит';
                           4 : s := 'им';
                           5 : s := 'ите';
                           6 : s := '€т';
                           end
                         else
                           case cas of
                           1 : s := '€ю';
                           2 : s := '€ешь';
                           3 : s := '€ет';
                           4 : s := '€ем';
                           5 : s := '€ете';
                           6 : s := '€ют';
                           end;
                           CaseEditor:=str+s;
                       end
      else if pos('йти',s)=length(s)-2 then
       begin
        str:=copy(s,1,length(s)-2)+'д';
        case cas of
         1:s:='у';
         2:s:='Єшь';
         3:s:='Єт';
         4:s:='Єм';
         5:s:='Єте';
         6:s:='ут';
        end;
        CaseEditor:=str+s;
       end
      else if (pos('есть',s)=length(s)-3) and (length(s)>=4) then
      begin
       str:=copy(s,1,length(s)-3);
       case cas of
        1:s:='м';
        2:s:='шь';
        3:s:='ст';
        4:s:='дим';
        5:s:='дите';
        6:s:='д€т';
       end;
       CaseEditor:=str+s;
      end;
    end;

 future:
   begin
    case cas of
     1:str:='буду';
     2:str:='будешь';
     3:str:='будет';
     4:str:='будем';
     5:str:='будете';
     6:str:='будут';
    end;
    if s = 'быть' then
      CaseEditor:=str
    else
      CaseEditor := str + ' ' + s;
   end;

 past:
   if s = 'быть' then
     begin
          case cas of
           1,2,3: str := 'был';
           4,5,6: str := 'были';
          end;
          CaseEditor:=str;
     end
   else if ((pos('атьс€',s)=length(s)-4) or (pos('€тьс€',s)=length(s)-4)) and (length(s)>5) then
         begin
          str:=copy(s,1,length(s)-4);
          case cas of
           1,2,3: s := 'лс€';
           4,5,6: s := 'лись';
          end;
          CaseEditor:=str+s;
         end
   else if (pos('йти',s)=length(s)-2) then
         begin
          str := copy(s,1,length(s)-3);
          case cas of
           1,2,3: s := 'шЄл';
           4,5,6: s := 'шли';
          end;
          CaseEditor:=str+s;
         end
   else if (pos('ить',s)=length(s)-2) or (pos('еть',s)=length(s)-2) or (pos('ать',s)=length(s)-2) or (pos('€ть',s)=length(s)-2) then
       begin
        str := copy(s,1,length(s)-2);
        case cas of
         1,2,3 : s := 'л';
         4,5,6 : s := 'ли';
        end;
        CaseEditor:=str+s;
       end
   else if (pos('есть',s)=length(s)-3) and (length(s)>=4) then
         begin
          str:=copy(s,1,length(s)-3);
          case cas of
           1,2,3:s:='л';
           4,5,6:s:='ли';
          end;
          CaseEditor:=str+s;
         end;
 end;
end;
end.