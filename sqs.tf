resource "aws_sqs_queue" "queue" {
  count = length(var.topic_and_queue_subscription_name)
  depends_on = [ aws_sqs_queue.dlq ]
  name  = var.topic_and_queue_subscription_name[count.index].queue_subscripted_name
  redrive_policy = var.dlq ? "{\"deadLetterTargetArn\":\"${aws_sqs_queue.dlq[count.index].arn}\",\"maxReceiveCount\":${var.dlq_retries}}" : null
}
resource "aws_sqs_queue" "dlq" {
  count = var.dlq? length(var.topic_and_queue_subscription_name):0
  name = "${var.topic_and_queue_subscription_name[count.index].queue_subscripted_name}_dlq"
}