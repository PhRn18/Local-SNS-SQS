resource "aws_sqs_queue" "queue" {
  count = length(var.topic_and_queue_subscription_name)
  name  = var.topic_and_queue_subscription_name[count.index].queue_subscripted_name
}