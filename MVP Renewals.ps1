$SubscriptionKey = '6523b23720e54a1f9b467d2bbeed3f64'
Set-MVPConfiguration -SubscriptionKey $SubscriptionKey

#Get MVP Profile
Get-MVPProfile

#Retreive Contribution Types
$ContributionType = Get-MVPContributionType | Select-Object -ExpandProperty Name

#Retrieve Contribution Areas
$ContributionArea = Get-MVPContributionArea -All

#Get Activity
$MVPContribution = Get-MVPContribution | select startdate, Title, Description | fl

$Splat = @{
    StartDate ='03/20/21'
    Title='GitHub Actions: Automating tasks for your workflows'
    Description = 'GitHub Actions allow you to create reusable actions using shell scripts and even mix multiple shell languages in the same action. You probably have a lot of shell scripts to automate many tasks, now you can easily turn them into action and reuse them for different workflows.'
    ReferenceUrl='https://www.meetup.com/Research-Triangle-PowerShell-Users-Group/events/275428261/'
    AnnualQuantity='1'
    SecondAnnualQuantity='0'
    AnnualReach = '0'
    Visibility = 'Everyone' # Get-MVPContributionVisibility
    ContributionType = 'Organizer (User Grou p/Meetup/Local Events)' # Get-MVPContributionType
    ContributionTechnology = 'PowerShell' # Get-MVPContributionArea
}

New-MVPContribution @Splat


#confirm activity
Get-MVPContribution | select startdate, Title, Description, ContributionTypeName | fl