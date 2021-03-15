'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
'Author: S.S. Ahmed										'
'Email: ss_ahmed1@hotmail.com									'
'Note: This product is provided without any support						'
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

If you want to learn more about the winsock, ports or TCP messaging then read my article at:

http://glowbutton.faithweb.com/downloads.htm

Download the winsock1.zip file from the above location, you will find all the details of the winsock control in that article. Winsock is automatically on your system when windows is installed. If you wont have Winsock 2 installed on your machine than download one from the microsoft site.

=====================================================================================

Something about this program!!!!

In the zip file you will find the following:

1. Source code of the WMS server
2. WMS server EXE file
3. Web application to test the application

STEPS NEEDED TO RUN THE APPLICATION:

1. Copy the complete site to your computer and create a virtual directory in IIS which should point towards the folder where you would unzip the site or where the site is located.

2. THe site has only one page,
3. Run the EXE server file and than run the web site. Enter a valid IP Address, write the IP address of your machine if the WMS server is located on your machine else enter the IP of the remote PC where the Server is installed. Enter the message in the message box and press "Send Message". Your message would be sent to the server. Thats it!!!!!!!!!

Problems

========

You might have to confront the problem if the port is not available on your machine, i have hardcoded the port number "5500" in both WMS Server and in ASP page, you will have to change bothe the port numbers, try 1007. Stop the server, make the required change and compile the server again. Run the server EXE file and than run the site again, it will work!!!!

Changes that you might have to make:
====================================

1. If the 5500 is port is not free on your machine, then open the server project and locate the line:
Winsock1.port = 5500

Change this line to:

Winsock1.port = 1007

Similarly open the ASP page and change the port number to 1007.

Purpose of this application??
=================================

In real world situations, you are usually faced with such situations when you are asked to develop an application for the internet and Winsock is one of the best tools available in the market which facilitates the creation of internet applications. You can use this appliation to send instant messages to your main server(WMS application), no matter where the server is situated, until it is connected to the internet your web site would be able to access the server. You will have to keep the server (WMS Application) running all the time to see any incoming messages, you can build upon this application and extend its usage and importance, you can enhance its performce by inducting new features, study the Winsock control and you can create a component of your own and you wont need any third party support for your users. The main logic is that you create one server application in VB and place that application on the machine which is connected to the internet and you create another web application which can be located anywhere and the users accessing your site would be able to send you instant messages, those messages would appear in your WMS server application. Basically, its a kind of client server application, both applications are using the sockets to talk to each other.

Note:
=====

To run the application, you will have to install TCP sockets on your machine, download the w3 socket component from http://tech.dimac.net, this is a self extracting file and will install the sockets on your machine with a single click.