{**************************************************
	���ڻ��ӵ��Ӷ�д�豸���޹�˾ 
	    ��Ȩ���� (c) 2007.04
 
	By: ��Ϊ�� Kim.Wu 
	Tel: 0755-26955558
	Http://www.chinaidcard.com
***************************************************}


unit CVRDLL;

interface

  //-------------------------------------------------------------------------
  function CVR_InitComm(iPort :integer):integer;stdcall;       						 //	��ʼ������
  function CVR_CloseComm():integer;stdcall;                                // �رմ���
  function CVR_Authenticate():integer;stdcall;										 	       // ����֤
  function CVR_Read_Content(Active :integer):integer;stdcall;					     //	��������
  //-------------------------------------------------------------------------
  function InitComm(iPort :integer):integer;stdcall;       						 //	��ʼ������
  function CloseComm():integer;stdcall;                                // �رմ���
  function Authenticate():integer;stdcall;										 	       // ����֤
  function Read_Content(Active :integer):integer;stdcall;					     //	��������

  function GetManuID(ID:PCardinal): integer;stdcall;

  function  GetPeopleName(strTmp:PChar; strLen:Pinteger): integer;stdcall;
  function  GetPeopleSex(strTmp:PChar; strLen:Pinteger): integer;stdcall;
  function  GetPeopleNation(strTmp:PChar; strLen:Pinteger): integer;stdcall;
  function  GetPeopleBirthday(strTmp:PChar; strLen:Pinteger): integer;stdcall;
  function  GetPeopleAddress(strTmp:PChar; strLen:Pinteger): integer;stdcall;
  function  GetPeopleIDCode(strTmp:PChar; strLen:Pinteger): integer;stdcall;


implementation

  //---------------------------------------------------
  function CVR_InitComm; external 'termb.dll';       					 //	��ʼ������
  function CVR_CloseComm; external 'termb.dll';                // �رմ���
  function CVR_Authenticate; external 'termb.dll'; 						 // ����֤
  function CVR_Read_Content; external 'termb.dll'; 				     //	��������
  //---------------------------------------------------
  function InitComm; external 'termb.dll';       					 //	��ʼ������
  function CloseComm; external 'termb.dll';                // �رմ���
  function Authenticate; external 'termb.dll'; 						 // ����֤
  function Read_Content; external 'termb.dll'; 				     //	��������
  //---------------------------------------------------
  function GetManuID;  external 'termb.dll';

  function  GetPeopleName ;external 'termb.dll';
  function  GetPeopleSex;external 'termb.dll';
  function  GetPeopleNation ;external 'termb.dll';
  function  GetPeopleBirthday;external 'termb.dll';
  function  GetPeopleAddress;external 'termb.dll';
  function  GetPeopleIDCode;external 'termb.dll';

end.
