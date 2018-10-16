
# Instructions

The content package tabulator is a Dotnet application used by IAT to validate and item.

Tabulator project on GitHub: https://github.com/SmarterApp/TabulateSmarterTestContentPackage

When the tabulator project releases a new version the process to incorporate that into IAT is below.

## Prerequisites

Install Dotnet for Mac: https://www.microsoft.com/net/learn/get-started/macos

You need Dotnet to build the application.


## Steps

The steps below add a gz file containing the version of the tabulator used by the validation service.  

The gz is copied and uzipped in the validation service docker image.  

The gz is a self contained dotnet core application built for a Debian based docker image.

1. Clone the tabulator project: `git clone https://github.com/SmarterApp/TabulateSmarterTestContentPackage`
1. Find the commit/branch/tag for the tabulator version you want to incorporate.   
1. Checkout the version of the code to incorporate, for example: `git checkout v3.4.1`
1. Open terminal and navigate to the root of the tabulator project.
1. Run `dotnet publish -c Release -r debian.8-x64`
1. Navigate to where the `publish` folder is, for example if you navigate from the root of the tabulator project
 `cd bin/Release/netcoreapp2.0/debian.8-x64` as the `publish` folder is in folder `debian.8-x64`
1. Run `tar -zcvf cpt<version>.tar.gz publish` -> example `tar -zcvf cpt3.4.1.tar.gz publish`
1. Copy the gz file to the IVS `src/main/docker` folder.
1. Navigate to the IVS `src/main/docker` folder
1. Delete any existing gz files.
1. Open the file `Dockerfile` in src/main/docker.  
1. Replace the old gz file with the new gz file.  There are three locations to replace.