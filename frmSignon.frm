VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmSignon 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Signon"
   ClientHeight    =   3975
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3090
   Icon            =   "frmSignon.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3975
   ScaleWidth      =   3090
   StartUpPosition =   3  'Windows Default
   Begin MSWinsockLib.Winsock wskSignon 
      Left            =   0
      Top             =   3720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Caption         =   " Signon Information "
      Height          =   1335
      Left            =   120
      TabIndex        =   1
      Top             =   2520
      Width           =   2895
      Begin VB.CommandButton cmdConnect 
         Caption         =   "&Connect"
         Default         =   -1  'True
         Height          =   255
         Left            =   1560
         TabIndex        =   3
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox txtUser 
         Height          =   285
         Left            =   960
         TabIndex        =   0
         Top             =   240
         Width           =   1815
      End
      Begin VB.TextBox txtSvrIp 
         Height          =   285
         Left            =   960
         TabIndex        =   2
         Top             =   600
         Width           =   1815
      End
      Begin VB.Label lblVersion 
         Caption         =   "Vesion:"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   960
         Width           =   1335
      End
      Begin VB.Label Label2 
         Caption         =   "Username:"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label1 
         Caption         =   "Server IP:"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   600
         Width           =   735
      End
   End
   Begin VB.Image Image1 
      Height          =   2250
      Left            =   120
      Picture         =   "frmSignon.frx":0CCA
      Top             =   120
      Width           =   2850
   End
End
Attribute VB_Name = "frmSignon"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdConnect_Click()
If txtUser.Text <> "" Then
If txtSvrIp.Text <> "" Then
    frmChat.Show
    frmChat.txtUser.Text = txtUser.Text
    Call frmChat.Connect(txtSvrIp.Text)
    frmChat.Caption = "Atwinda Chat - (" & txtUser.Text & ")"
    Unload Me
End If
End If
End Sub

Private Sub Form_Load()
lblVersion.Caption = "Version: " & App.Major & "." & App.Minor & "." & App.Revision
End Sub
