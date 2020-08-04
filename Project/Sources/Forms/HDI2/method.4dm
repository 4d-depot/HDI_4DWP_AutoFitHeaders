
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.trace:=False:C215
		OBJECT SET VISIBLE:C603(*;"btnTrace";False:C215)
		OBJECT SET VISIBLE:C603(*;"btnHtml";False:C215)
		
		
		ALL RECORDS:C47([SAMPLES:3])
		WPArea:=WP New:C1317([SAMPLES:3]WP:2)
		
		WP SET ATTRIBUTES:C1342(WPArea;wk layout unit:K81:78;wk unit cm:K81:135)
		
		Form:C1466.marginTop:="4cm"
		Form:C1466.marginBottom:="4cm"
		
		Form:C1466.autoFitOn:=True:C214
		Form:C1466.autoFitOff:=False:C215
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (FORM Get current page:C276=1)
			OBJECT SET VISIBLE:C603(*;"btnTrace";False:C215)
			OBJECT SET VISIBLE:C603(*;"btnHtml";False:C215)
		Else 
			OBJECT SET VISIBLE:C603(*;"btnTrace";True:C214)
			OBJECT SET VISIBLE:C603(*;"btnHtml";True:C214)
		End if 
		
End case 

