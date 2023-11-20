function Get-DiskInfo {
    foreach ($domain in (Get-ADForest).domains) { 
      $hosts = Get-ADDomainController -filter * -server $domain | 
      Sort-Object -Prop hostname
      ForEach ($host in $hosts) { 
       $cs = Get-CimInstance -ClassName Win32_ComputerSystem `
                             -ComputerName $host
       $props = @{'ComputerName' = $host
                  'DomainController' = $host
                  'Manufacturer' = $cs.manufacturer
                  'Model' = $cs.model
                  'TotalPhysicalMemory(GB)'=$cs.totalphysicalmemory / 1GB
                  }
        New-Object -Type PSObject -Prop $props
      } #foreach $host
     } #foreach $domain
   } #function
   Export-ModuleMember -function Get-DiskInfo
   