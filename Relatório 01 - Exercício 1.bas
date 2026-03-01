Dim n1 As Double
Dim n2 As Double
Dim n3 As Double
Dim p1 As Integer
Dim p2 As Integer
Dim p3 As Integer
Dim media As Double

Print "Digite a primeira nota:"
Input n1
Print "Digite o peso da primeira nota:"
Input p1
Print "Digite a segunda nota:"
Input n2
Print "Digite o peso da segunda nota:"
Input p2
Print "Digite a terceira nota:"
Input n3
Print  "Digite o peso da terceira nota:"
Input p3

media = ((n1 * p1) + (n2 * p2) + (n3 * p3)) / (p1 + p2 + p3)

If media >= 70 Then
  Print "Aprovado direto"
Else
  Print "Reprovado direto"
End If

Sleep
