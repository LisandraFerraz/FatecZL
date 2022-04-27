Public Class Form1
    Private Sub btnCriar_Click(sender As Object, e As EventArgs) Handles btnCriar.Click
        Dim obj_Conta As New Poupanca("", 0, 0, "")
        obj_Conta.cNomeCliente = txtbCliente.Text
        obj_Conta.cSaldoConta = CDbl(txtbSaldo.Text)
        obj_Conta.cNumConta = CInt(txtbConta.Text)
        obj_Conta.pDiaAniver = txtbAniversario.Text

        MessageBox.Show("Conta criada com sucesso." & vbCr &
                        "Nome do cliente: " & obj_Conta.cNomeCliente & vbCr &
                        "Saldo disponível: R$" & obj_Conta.cSaldoConta & vbCr &
                        "Conta Nº " & obj_Conta.cNumConta & vbCr &
                        "Aniversário: " & obj_Conta.pDiaAniver)
    End Sub

    Private Sub btnDepositar_Click(sender As Object, e As EventArgs) Handles btnDepositar.Click
        Dim saldoAtual = CDbl(txtbSaldo2.Text)
        Dim valorAdd = CDbl(txtbValor.Text)
        Dim novoSaldo As Double

        novoSaldo = valorAdd + saldoAtual

        MessageBox.Show("Dados atualizados com sucesso" & vbCr &
                        "Seu novo saldo é: R$" & novoSaldo)

    End Sub

    Private Sub btnSacar_Click(sender As Object, e As EventArgs) Handles btnSacar.Click
        Dim saldoAtual = CDbl(txtbSaldo2.Text)
        Dim valorRemove = CDbl(txtbValor.Text)
        Dim novoSaldo As Double

        novoSaldo = saldoAtual - valorRemove

        MessageBox.Show("Dados atualizados com sucesso" & vbCr &
                        "Seu novo saldo é: R$" & novoSaldo)

    End Sub
End Class
