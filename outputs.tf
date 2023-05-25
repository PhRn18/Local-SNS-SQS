output "sns_topic_names" {
  value = join(", ", aws_sns_topic.topic[*].name)
}
output "sqs_queue_names" {
  value = join(", ",aws_sqs_queue.queue[*].name)
}
output "dlq_queue_names" {
  value = join(", ",aws_sqs_queue.dlq[*].name)
}
output "sns_topic_arns" {
  value = join(", ",aws_sns_topic.topic[*].arn)
}
output "sqs_queue_arns" {
  value = join(", ",aws_sqs_queue.queue[*].arn)
}
output "dlq_queue_arns" {
  value = join(", ",aws_sqs_queue.dlq[*].arn)
}

