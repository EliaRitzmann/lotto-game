$userNumbers = @()
$computerNumbers =@()

for ($i = 0; $i -lt 6; $i++) {
    
    do {
        try{
              #Typ prüfen
              [int]$Eingabe= read-host "Bitte geben Sie eine ganze Zahl zwischen 1 und 42 ein.)"
              }
        catch {
            Write-Host "Bitte geben Sie eine gültige Zahl ein."
            }
            #Bereich prüfen
            if($Eingabe -gt 0 -and $Eingabe -le 42){
              $InputOK=$true
              $userNumbers += $Eingabe
            }
    } Until($InputOK -eq $true) 
    
   
}

for ($i = 0; $i -lt 6; $i++) {
    $computerNumbers += Get-Random -Maximum 42
}

$numberOfMatching = 0

for ($i = 0; $i -lt 6; $i++) {
    for ($j = 0; $j -lt 6; $j++) {
        if($userNumbers[$i] -eq $computerNumbers[$j]){
            $numberOfMatching++
        }
    }
}

Write-Host "Deine Zahlen: " $userNumbers
Write-Host "Lotto Zahlen:" $computerNumbers
Write-Host "Du hast" $numberOfMatching "Zahlen richtig geraten"


