Public Class Conta
    Private nomeCliente As String
    Private saldoConta As Double
    Private numConta As Integer

    'Construtores'
    Public Sub New(nomeCliente As String)
        Me.nomeCliente = nomeCliente
    End Sub

    Public Sub New(nomeCliente As String, saldoConta As Double, numConta As Integer)
        Me.cNomeCliente = nomeCliente
        Me.cSaldoConta = saldoConta
        Me.cNumConta = numConta
    End Sub

    'getters & setters'
    Public Property cNomeCliente As String
        Get
            Return nomeCliente
        End Get
        Set(value As String)
            nomeCliente = value
        End Set
    End Property

    Public Property cSaldoConta As Double
        Get
            Return saldoConta
        End Get
        Set(value As Double)
            saldoConta = value
        End Set
    End Property

    Public Property cNumConta As Integer
        Get
            Return numConta
        End Get
        Set(value As Integer)
            numConta = value
        End Set
    End Property
End Class
