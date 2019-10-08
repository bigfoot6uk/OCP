# Openshift User membership & Project Export script

As a Openshift Cluster Admin you may need to be able to export all project names & user membership from the OCP platform. This script does this


# Usage

Pre-req: Use from a Fedora based Linux distro & have the OC client installed 

1. log into your OCP platform *oc login*
2. Copy the shell script to remote machine or cd to it if it's your local machine 
3. Run shell script *./rolebindings.sh*
4. Output will be a file in the same directory called *projectmembers*
