<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<title>Windows Messaging System</title>
</HEAD>
<BODY>

<%
if (Request.Form("Message") = "") and (Request.form("txtHostIPAddress") = "")then
	

%>
<div align ="center">
<center>
Please type a message below and press the submit button. Your message
will be sent to the Message System Server of the IP address you specify.

<form name="myform" action="Sendmsg.asp" method="post">
	Enter Host IP Address:<input type="text" value="" maxlength="40" name="txtHostIPAddress"><br>
	Please Type your message below:<textarea row=2 name="txtMessage" cols=39></textarea>
	<input type="submit" value="Submit Message" name="btnSubmit">
</form>
<%
else
dim winsock1

'Creates an instance of the TCP Sockets component, you can
'download the component from http://tech.dimac.net
'
set winsock1 = server.CreateObject("Socket.TCP")

'If the TCP port 5500 is already in use, you will need to
'select a different port number and recompile the messaging system server

winsock1.Port = 5500 'This port should be same as used in your WMS Server
winsock1.Host = Request.Form("txtHostIPAddress") 


'Open connection to the specified host and port
winsock1.Open

'Transmit the message to the messaging system server.
winsock1.SendLine Request.Form("txtMessage")

'Closes the connection
winsock1.Close



%>
Your message has been sent
<a href="Sendmsg.asp">Start Over</a>
<%end if%>
</BODY>
</HTML>
