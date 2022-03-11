<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.lblConta = New System.Windows.Forms.Label()
        Me.lblCliente = New System.Windows.Forms.Label()
        Me.lblSaldo = New System.Windows.Forms.Label()
        Me.lblAniversario = New System.Windows.Forms.Label()
        Me.txtbConta = New System.Windows.Forms.TextBox()
        Me.txtbCliente = New System.Windows.Forms.TextBox()
        Me.txtbSaldo = New System.Windows.Forms.TextBox()
        Me.txtbAniversario = New System.Windows.Forms.TextBox()
        Me.lblValor = New System.Windows.Forms.Label()
        Me.lblSaldo2 = New System.Windows.Forms.Label()
        Me.btnCriar = New System.Windows.Forms.Button()
        Me.txtbValor = New System.Windows.Forms.TextBox()
        Me.txtbSaldo2 = New System.Windows.Forms.TextBox()
        Me.btnSacar = New System.Windows.Forms.Button()
        Me.btnDepositar = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lblConta
        '
        Me.lblConta.AutoSize = True
        Me.lblConta.Font = New System.Drawing.Font("Segoe UI Semibold", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblConta.Location = New System.Drawing.Point(313, 160)
        Me.lblConta.Name = "lblConta"
        Me.lblConta.Size = New System.Drawing.Size(56, 23)
        Me.lblConta.TabIndex = 0
        Me.lblConta.Text = "Conta"
        '
        'lblCliente
        '
        Me.lblCliente.AutoSize = True
        Me.lblCliente.Font = New System.Drawing.Font("Segoe UI Semibold", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblCliente.Location = New System.Drawing.Point(50, 59)
        Me.lblCliente.Name = "lblCliente"
        Me.lblCliente.Size = New System.Drawing.Size(63, 23)
        Me.lblCliente.TabIndex = 1
        Me.lblCliente.Text = "Cliente"
        '
        'lblSaldo
        '
        Me.lblSaldo.AutoSize = True
        Me.lblSaldo.Font = New System.Drawing.Font("Segoe UI Semibold", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblSaldo.Location = New System.Drawing.Point(50, 110)
        Me.lblSaldo.Name = "lblSaldo"
        Me.lblSaldo.Size = New System.Drawing.Size(52, 23)
        Me.lblSaldo.TabIndex = 2
        Me.lblSaldo.Text = "Saldo"
        '
        'lblAniversario
        '
        Me.lblAniversario.AutoSize = True
        Me.lblAniversario.Font = New System.Drawing.Font("Segoe UI Semibold", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblAniversario.Location = New System.Drawing.Point(50, 160)
        Me.lblAniversario.Name = "lblAniversario"
        Me.lblAniversario.Size = New System.Drawing.Size(95, 23)
        Me.lblAniversario.TabIndex = 3
        Me.lblAniversario.Text = "Aniversário"
        Me.lblAniversario.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'txtbConta
        '
        Me.txtbConta.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtbConta.Location = New System.Drawing.Point(375, 154)
        Me.txtbConta.Name = "txtbConta"
        Me.txtbConta.Size = New System.Drawing.Size(120, 29)
        Me.txtbConta.TabIndex = 4
        '
        'txtbCliente
        '
        Me.txtbCliente.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtbCliente.Location = New System.Drawing.Point(151, 57)
        Me.txtbCliente.Name = "txtbCliente"
        Me.txtbCliente.Size = New System.Drawing.Size(344, 29)
        Me.txtbCliente.TabIndex = 5
        '
        'txtbSaldo
        '
        Me.txtbSaldo.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtbSaldo.Location = New System.Drawing.Point(151, 108)
        Me.txtbSaldo.Name = "txtbSaldo"
        Me.txtbSaldo.Size = New System.Drawing.Size(344, 29)
        Me.txtbSaldo.TabIndex = 6
        '
        'txtbAniversario
        '
        Me.txtbAniversario.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtbAniversario.Location = New System.Drawing.Point(151, 154)
        Me.txtbAniversario.Name = "txtbAniversario"
        Me.txtbAniversario.Size = New System.Drawing.Size(122, 29)
        Me.txtbAniversario.TabIndex = 7
        '
        'lblValor
        '
        Me.lblValor.AutoSize = True
        Me.lblValor.Font = New System.Drawing.Font("Segoe UI Semibold", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblValor.Location = New System.Drawing.Point(64, 309)
        Me.lblValor.Name = "lblValor"
        Me.lblValor.Size = New System.Drawing.Size(49, 23)
        Me.lblValor.TabIndex = 8
        Me.lblValor.Text = "Valor"
        '
        'lblSaldo2
        '
        Me.lblSaldo2.AutoSize = True
        Me.lblSaldo2.Font = New System.Drawing.Font("Segoe UI Semibold", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblSaldo2.Location = New System.Drawing.Point(290, 309)
        Me.lblSaldo2.Name = "lblSaldo2"
        Me.lblSaldo2.Size = New System.Drawing.Size(52, 23)
        Me.lblSaldo2.TabIndex = 9
        Me.lblSaldo2.Text = "Saldo"
        '
        'btnCriar
        '
        Me.btnCriar.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.btnCriar.Location = New System.Drawing.Point(375, 215)
        Me.btnCriar.Name = "btnCriar"
        Me.btnCriar.Size = New System.Drawing.Size(120, 36)
        Me.btnCriar.TabIndex = 10
        Me.btnCriar.Text = "Criar"
        Me.btnCriar.UseVisualStyleBackColor = True
        '
        'txtbValor
        '
        Me.txtbValor.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtbValor.Location = New System.Drawing.Point(130, 307)
        Me.txtbValor.Name = "txtbValor"
        Me.txtbValor.Size = New System.Drawing.Size(125, 29)
        Me.txtbValor.TabIndex = 11
        '
        'txtbSaldo2
        '
        Me.txtbSaldo2.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtbSaldo2.Location = New System.Drawing.Point(357, 307)
        Me.txtbSaldo2.Name = "txtbSaldo2"
        Me.txtbSaldo2.Size = New System.Drawing.Size(120, 29)
        Me.txtbSaldo2.TabIndex = 12
        '
        'btnSacar
        '
        Me.btnSacar.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.btnSacar.Location = New System.Drawing.Point(350, 370)
        Me.btnSacar.Name = "btnSacar"
        Me.btnSacar.Size = New System.Drawing.Size(127, 36)
        Me.btnSacar.TabIndex = 13
        Me.btnSacar.Text = "Sacar"
        Me.btnSacar.UseVisualStyleBackColor = True
        '
        'btnDepositar
        '
        Me.btnDepositar.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.btnDepositar.Location = New System.Drawing.Point(201, 370)
        Me.btnDepositar.Name = "btnDepositar"
        Me.btnDepositar.Size = New System.Drawing.Size(127, 36)
        Me.btnDepositar.TabIndex = 14
        Me.btnDepositar.Text = "Depositar"
        Me.btnDepositar.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(566, 457)
        Me.Controls.Add(Me.btnDepositar)
        Me.Controls.Add(Me.btnSacar)
        Me.Controls.Add(Me.txtbSaldo2)
        Me.Controls.Add(Me.txtbValor)
        Me.Controls.Add(Me.btnCriar)
        Me.Controls.Add(Me.lblSaldo2)
        Me.Controls.Add(Me.lblValor)
        Me.Controls.Add(Me.txtbAniversario)
        Me.Controls.Add(Me.txtbSaldo)
        Me.Controls.Add(Me.txtbCliente)
        Me.Controls.Add(Me.txtbConta)
        Me.Controls.Add(Me.lblAniversario)
        Me.Controls.Add(Me.lblSaldo)
        Me.Controls.Add(Me.lblCliente)
        Me.Controls.Add(Me.lblConta)
        Me.Name = "Form1"
        Me.Text = "Gerenciar Conta Bancária"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents lblConta As Label
    Friend WithEvents lblCliente As Label
    Friend WithEvents lblSaldo As Label
    Friend WithEvents lblAniversario As Label
    Friend WithEvents txtbConta As TextBox
    Friend WithEvents txtbCliente As TextBox
    Friend WithEvents txtbSaldo As TextBox
    Friend WithEvents txtbAniversario As TextBox
    Friend WithEvents lblValor As Label
    Friend WithEvents lblSaldo2 As Label
    Friend WithEvents btnCriar As Button
    Friend WithEvents txtbValor As TextBox
    Friend WithEvents txtbSaldo2 As TextBox
    Friend WithEvents btnSacar As Button
    Friend WithEvents btnDepositar As Button
End Class
