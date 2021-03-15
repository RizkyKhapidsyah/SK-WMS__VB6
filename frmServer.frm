VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmServer 
   Caption         =   "Server"
   ClientHeight    =   2955
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   2955
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClearBuffer 
      Caption         =   "Clear Buffer"
      Height          =   375
      Left            =   3240
      TabIndex        =   2
      Top             =   120
      Width           =   1335
   End
   Begin VB.TextBox txtMessageList 
      Height          =   2295
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   4455
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   4080
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label lblMessageList 
      Caption         =   "Messages received are displayed below:"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   240
      Width           =   2895
   End
End
Attribute VB_Name = "frmServer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdClearBuffer_Click()
    txtMessageList.Text = ""
End Sub

Private Sub Form_Load()

Winsock1.LocalPort = 5500 '1007
Winsock1.Listen

End Sub

Private Sub Winsock1_Close()

Winsock1.Close
Winsock1.Listen


End Sub

Private Sub Winsock1_ConnectionRequest(ByVal requestID As Long)

Winsock1.Close
Winsock1.Accept requestID

End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)

Dim message As String

Winsock1.GetData message, vbString
txtMessageList.Text = "Message received from " & _
    Winsock1.RemoteHostIP & " at " & Date & " " & Time & vbCrLf & _
        message & vbCrLf & vbCrLf & vbCrLf & txtMessageList.Text
        

End Sub
