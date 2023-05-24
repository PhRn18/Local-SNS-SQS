variable "topic_and_queue_subscription_name" {
  type = list(object({
    sns_topic_name           = string
    queue_subscripted_name   = string
  }))
  default = [
    {
      sns_topic_name           = "sns-1"
      queue_subscripted_name   = "sqs-queue2"
    }
  ]
}