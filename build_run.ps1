function Invoke-BuildRun {
  [CmdletBinding()]
  param(
    [string]$Version = 'latest',
    [string]$AppName = 'waypoint-test',
    [string]$DockerHubUser = 'satak',
    [string]$Folder = '.',
    [int]$InternalPort = 3000,
    [int]$externalPort = 3000,
    [switch]$Push,
    [switch]$Run
  )

  $tag = "$($DockerHubUser)/$($AppName):$($Version)"
  $portConfig = "$($externalPort):$($internalPort)"

  docker kill $AppName
  docker rm $AppName
  docker build -t $tag $Folder

  Write-Output "Building $AppName tag: $tag"
  Write-Output "Port config $portConfig (external: $externalPort internal: $internalPort)"

  if ($Push) {
    docker push $tag
  }

  if ($Run) {
    docker run -it -d --name $appName -p $portConfig $tag
  }

}

function Start-LocalServer {
  [CmdletBinding()]
  param (

  )
  docker-compose up
}
