resource "aws_sns_topic" "topic" {
  count = length(var.topic_and_queue_subscription_name)
  name  = var.topic_and_queue_subscription_name[count.index].sns_topic_name
}

resource "aws_sns_topic_subscription" "my_topic_subscriptions" {
  depends_on = [ aws_sns_topic.topic,aws_sqs_queue.queue ]
  count            = length(var.topic_and_queue_subscription_name)
  raw_message_delivery = true
  topic_arn        = aws_sns_topic.topic[count.index].arn
  protocol         = "sqs"
  endpoint         = aws_sqs_queue.queue[count.index].arn
}


