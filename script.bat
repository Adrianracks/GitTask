set %STACK-NAME%
set %ACCOUNT-ID%
aws cloudformation deploy --stack-name martesdoscinco --template-file tviernes.yml --parameter-overrides "STACK-NAME=%STACK-NAME%"