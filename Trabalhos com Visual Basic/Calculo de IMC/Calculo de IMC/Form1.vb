Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btnCalcular.Click

        Dim altura = CDbl(alturaTxtB.Text)
        Dim peso = CDbl(pesoTxtB.Text)

        Dim resulImc As Double

        resulImc = peso / (altura * altura)

        Select Case resulImc
            Case 0 To 18.5
                MessageBox.Show("Seu IMC é igual a " & resulImc & vbCr &
                                "Classificação: Desnutrido.")
            Case 18.6 To 24.9
                MessageBox.Show("Seu IMC é igual a " & resulImc & vbCr &
                                "Classificação: Adequado.")
            Case 25 To 29.9
                MessageBox.Show("Seu IMC é igual a " & resulImc & vbCr &
                                "Classificação: Pré-obeso.")
            Case 30 To 34.9
                MessageBox.Show("Seu IMC é igual a " & resulImc & vbCr &
                                "Classificação: Obesidade grau I.")
            Case 35 To 39.9
                MessageBox.Show("Seu IMC é igual a " & resulImc & vbCr &
                                "Classificação: Obesidade grau II.")
            Case Else
                MessageBox.Show("Valores inseridos são inválidos e não foi possível completar o cálculo.")
        End Select


    End Sub
End Class
