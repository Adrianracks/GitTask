set Tinstancia=t2.small
aws cloudformation deploy --stack-name WordPressServer --template-file main.yml --parameter-override InstanceType=%Tinstancia%

IF %errorlevel% neq 0 (
    echo Error
) else (
    aws cloudformation list-exports --query "Exports[?Name == 'ServerPublicIp']"    
)