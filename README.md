# sns-sqs-aws-terraform
Este repositório contém um código Terraform que permite a criação de filas SQS (Simple Queue Service) que são subscritas a um tópico SNS (Simple Notification Service) com nomes personalizados. Além disso, também é possível criar filas de mensagens de erro (Dead Letter Queues). O código pode ser adaptado para ser utilizado em um ambiente de produção, no entanto, o arquivo main.tf está configurado para executar a infraestrutura em um contêiner LocalStack.

Com essa configuração, você pode definir os nomes das filas e configurar a comunicação entre as filas SQS e o tópico SNS. O uso de filas de mensagens de erro (DLQs) permite que as mensagens que não puderem ser processadas corretamente sejam redirecionadas para uma fila separada, para posterior análise e ações adicionais.

Lembrando que o ambiente de execução está sendo definido para o LocalStack, o que significa que você pode testar a infraestrutura localmente sem precisar provisionar recursos reais na AWS. No entanto, se desejar utilizar esse código em um ambiente de produção, será necessário fazer as devidas alterações para se conectar à sua conta da AWS.
