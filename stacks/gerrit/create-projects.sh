#!/bin/bash

ssh -p 29418 admin@rancher-agent-01  'gerrit create-account' --group Administrators --full-name jenkins --email jenkins@localhost.localdomain  jenkins
ssh -p 29418 admin@rancher-agent-01  'gerrit create-account' --group Administrators --full-name rainer --email rburgst@gmail.com rainer
ssh -p 29418 admin@rancher-agent-01  'gerrit create-project' demo/rancher-jenkins-seed-jobs
ssh -p 29418 admin@rancher-agent-01  'gerrit create-project' demo/webshop



echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyC6RMmugVCoPN/0WKKLVJWiVtlzRzci1yXXAsEwTtr/iusAkM15XJyTRljtPf8+e+PJnKVyNJ6elq6FgK8CRA9QW70/2icE+5aFdgQXk0A2GtgTPDY4bVF83/JZnxpi66jSfX4sZC+JSvoNIXkkEk+hrPamPyWQOtYN5E8NYH8tlmDdwU4kGpX4ooMUTzClasbHXvpLnMCgwudo6ndZQ//gseH/ptBgD+X76J4jBDGfTOmvPyyv/xRXlhRoCXd1hXzCkyspepaK0MIqXDV/kDfjhcx/v6kuFhcD5BicaaqLkqEO9NbKrwccmvEjURkyxwkTeO5Ql14CLG9Jeeyh2L' | ssh -p 29418 admin@rancher-agent-01  'gerrit set-account' --add-ssh-key - jenkins 
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDc0zGi0Rigsym3lzBW7mpHzK2Zaf9sCPsXeOHC1MfWTZVJ/SMbrzx8bzctaJzYng94EW9AOUSLgWQPnfhykVQw2V1CnGgbNWmiqkBg1tB+kVoa3yIxIQeTwPcYT0NftLb8Q7IlHfCh1dYmFSi5z7Jr1j/HTi/AU9zC5Mg3/N3qikj1i7uVGbfhNBCQgCvvuUHzqWWhkrJ9c4X4d643uDTS2OcqI0Pcv4LKCBWapYx7iMfJ/1ex6dDJa4tOlKuuzIMo4d28pg/+BDulel+pIH1nS02gP7Kp5S6WWQcgLmuIzFyX+alh78L1fietultMeZZTu3/l6W1sAbqVv4MzV0c1' | ssh -p 29418 admin@rancher-agent-01  'gerrit set-account' --add-ssh-key - rainer

