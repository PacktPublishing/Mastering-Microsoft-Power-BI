$UserCredential = Get-Credential
$CurrentDate = get-date
$Yesterday = $CurrentDate.AddDays(-1)
$csvFile = "C:\Users\Brett Powell\Desktop\PowerBIAuditLogs.csv"
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
 
Import-PSSession $Session

$result = Search-UnifiedAuditLog -StartDate $Yesterday -EndDate $CurrentDate -RecordType PowerBI -ResultSize 5000 | Export-Csv $csvFile 