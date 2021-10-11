unit Verb;

interface

const
  past    = 1;
  present = 2;
  future  = 3;
  vowels = ['�','�','�','�','�','�','�','�','�'];

function CaseEditor (verb : string; tense, cas : integer ) : string;

implementation

function CaseEditor (verb : string; tense, cas : integer) : string;
var
  s, str : string;
begin
  s := verb;
  case tense of
  present:
    if s = '����' then
          CaseEditor:='����'
    else
    begin
    //////////////////////////////////////////////
      if (pos('�����',s)=length(s)-4) and (length(s)>5) then
       begin
        str:=copy(s,1,length(s)-5);
        if (s='���������') then
        begin
          case cas of
            1 : s :='���';
            2 : s :='����';
            3 : s :='����';
            4 : s :='����';
            5 : s :='�����';
            6 : s :='����';
          end;
          CaseEditor:=str+'a'+s;
        end
        else
        begin
          case cas of
            1 : s :='���';
            2 : s :='����';
            3 : s :='����';
            4 : s :='����';
            5 : s :='�����';
            6 : s :='����';
          end;
          CaseEditor:=str+s;
        end;
       end
      ///////////////////////////////////////////////
      else if (pos('�����',s)=length(s)-4) and (length(s)>5) then
       begin
        str:=copy(s,1,length(s)-5);
        if str[length(str)] in vowels then
        begin
          case cas of
            1 : s :='���';
            2 : s :='����';
            3 : s :='����';
            4 : s :='����';
            5 : s :='�����';
            6 : s :='����';
          end;
          CaseEditor:=str+s;
        end
        else
        begin
          case cas of
            1 : s :='����';
            2 : s :='�����';
            3 : s :='�����';
            4 : s :='�����';
            5 : s :='������';
            6 : s :='�����';
          end;
          CaseEditor:=str+s;
        end;
       end
      //////////////////////////////////////////////
      else if (pos('���',s)=length(s)-2) or (pos('���',s)=length(s)-2) then
         if (s = '�����') then
                        begin
                           case cas of
                           1 : s := '����';
                           2 : s := '������';
                           3 : s := '�����';
                           4 : s := '�����';
                           5 : s := '������';
                           6 : s := '�����';
                           end;
                           CaseEditor:=s;
                        end
                        else
                        begin
                         str:=copy(s,1,length(s)-3);
                         if (length(s) = 4) then
                         if (pos('���',s)=length(s)-2) then str := str + '�' else str := str + '�';
                         case cas of
                          1:begin
                             if str[length(str)]='�' then str:=copy(str,1,length(str)-1)+'�';
                             if str[length(str)]='�' then str:=copy(str,1,length(str)-1)+'�';
                             if str[length(str)]='�' then str:=copy(str,1,length(str)-1)+'�';
                             if (str[length(str)]='�') or (str[length(str)]='�') or (str[length(str)]='�') then s:='�' else
                             if (pos('��',str) = length(str)-1) then s := '��'
                             else if str[length(str)] = '�' then s := '��' else s:='�';
                            end;
                          2:s:='���';
                          3:s:='��';
                          4:s:='��';
                          5:s:='���';
                          6:if (str[length(str)]='�') or (str[length(str)]='�') or (str[length(str)]='�') then s:='��' else s:='��';
                         end;
                         CaseEditor:=str+s;
                        end
      //////////////////////////////////////////////////////
      else if pos('���',s)=length(s)-2 then
                       begin
                         str:=copy(s,1,length(s)-3);
                         if str[length(str)]='�' then str:=copy(str,1,length(str)-1)+'�';
                         if str[length(str)]='�' then str:=copy(str,1,length(str)-1)+'j';
                         if (s='�����') or (s='�����') or (s='������') then
                         begin
                           case cas of
                           1 : s := '�';
                           2 : s := '���';
                           3 : s := '��';
                           4 : s := '��';
                           5 : s := '���';
                           6 : s := '��';
                           end;
                           CaseEditor:=str+s;
                         end
                         else
                         if (s='�������') then
                         begin
                           case cas of
                           1 : s := '�';
                           2 : s := '���';
                           3 : s := '��';
                           4 : s := '��';
                           5 : s := '���';
                           6 : s := '��';
                           end;
                           CaseEditor:=str+s;
                         end
                         else
                         if (s='�����') then
                         begin
                           case cas of
                           1 : s := '����';
                           2 : s := '�����';
                           3 : s := '����';
                           4 : s := '����';
                           5 : s := '�����';
                           6 : s := '�����';
                           end;
                           CaseEditor:=s;
                         end
                         else
                         if (s='������') then
                         begin
                           case cas of
                           1 : s := '���';
                           2 : s := '����';
                           3 : s := '���';
                           4 : s := '���';
                           5 : s := '����';
                           6 : s := '����';
                           end;
                           CaseEditor:=str+s;
                         end
                         else
                         if (pos('��',str)=length(str)-1) then
                         begin
                           delete(str,length(str)-1,2);
                           case cas of
                           1 : s := '��';
                           2 : s := '����';
                           3 : s := '���';
                           4 : s := '���';
                           5 : s := '����';
                           6 : s := '���';
                           end;
                           CaseEditor:=str+s;
                         end
                         else
                         begin
                           case cas of
                           1 : s := '��';
                           2 : s := '����';
                           3 : s := '���';
                           4 : s := '���';
                           5 : s := '����';
                           6 : s := '���';
                           end;
                           CaseEditor:=str+s;
                         end;

                       end
      else if pos('���',s)=length(s)-2 then
                       begin
                         str:=copy(s,1,length(s)-3);
                         if str[length(str)] in vowels then
                           case cas of
                           1 : s := '�';
                           2 : s := '���';
                           3 : s := '��';
                           4 : s := '��';
                           5 : s := '���';
                           6 : s := '��';
                           end
                         else
                           case cas of
                           1 : s := '��';
                           2 : s := '����';
                           3 : s := '���';
                           4 : s := '���';
                           5 : s := '����';
                           6 : s := '���';
                           end;
                           CaseEditor:=str+s;
                       end
      else if pos('���',s)=length(s)-2 then
       begin
        str:=copy(s,1,length(s)-2)+'�';
        case cas of
         1:s:='�';
         2:s:='���';
         3:s:='��';
         4:s:='��';
         5:s:='���';
         6:s:='��';
        end;
        CaseEditor:=str+s;
       end
      else if (pos('����',s)=length(s)-3) and (length(s)>=4) then
      begin
       str:=copy(s,1,length(s)-3);
       case cas of
        1:s:='�';
        2:s:='��';
        3:s:='��';
        4:s:='���';
        5:s:='����';
        6:s:='���';
       end;
       CaseEditor:=str+s;
      end;
    end;

 future:
   begin
    case cas of
     1:str:='����';
     2:str:='������';
     3:str:='�����';
     4:str:='�����';
     5:str:='������';
     6:str:='�����';
    end;
    if s = '����' then
      CaseEditor:=str
    else
      CaseEditor := str + ' ' + s;
   end;

 past:
   if s = '����' then
     begin
          case cas of
           1,2,3: str := '���';
           4,5,6: str := '����';
          end;
          CaseEditor:=str;
     end
   else if ((pos('�����',s)=length(s)-4) or (pos('�����',s)=length(s)-4)) and (length(s)>5) then
         begin
          str:=copy(s,1,length(s)-4);
          case cas of
           1,2,3: s := '���';
           4,5,6: s := '����';
          end;
          CaseEditor:=str+s;
         end
   else if (pos('���',s)=length(s)-2) then
         begin
          str := copy(s,1,length(s)-3);
          case cas of
           1,2,3: s := '���';
           4,5,6: s := '���';
          end;
          CaseEditor:=str+s;
         end
   else if (pos('���',s)=length(s)-2) or (pos('���',s)=length(s)-2) or (pos('���',s)=length(s)-2) or (pos('���',s)=length(s)-2) then
       begin
        str := copy(s,1,length(s)-2);
        case cas of
         1,2,3 : s := '�';
         4,5,6 : s := '��';
        end;
        CaseEditor:=str+s;
       end
   else if (pos('����',s)=length(s)-3) and (length(s)>=4) then
         begin
          str:=copy(s,1,length(s)-3);
          case cas of
           1,2,3:s:='�';
           4,5,6:s:='��';
          end;
          CaseEditor:=str+s;
         end;
 end;
end;
end.