variable "topic_and_queue_subscription_name" {
  type = list(object({
    sns_topic_name           = string
    queue_subscripted_name   = string
  }))
  default = [
    {
      sns_topic_name           = "transaction-full"
      queue_subscripted_name   = "withdraw-new-transaction"
    },
    {
      sns_topic_name           = "withdraw-split-status"
      queue_subscripted_name   = "withdraw-split-status"
    },
    {
      sns_topic_name           = "transactions-bankly-updated"
      queue_subscripted_name   = "transactions-bankly-updated"
    },
    {
      sns_topic_name           = "withdraw-payment-status"
      queue_subscripted_name   = "withdraw-payment-status"
    },
    {
      sns_topic_name           = "pix-created"
      queue_subscripted_name   = "pix-created"
    },
    {
      sns_topic_name           = "qrcode-bankly-created"
      queue_subscripted_name   = "qrcode-bankly-created"
    },
    {
      sns_topic_name           = "qrcode-bankly-updated"
      queue_subscripted_name   = "qrcode-bankly-updated"
    },
    {
      sns_topic_name           = "update-stone-transaction-topic"
      queue_subscripted_name   = "update-stone-transaction-queue"
    }
  ]
}
variable "development_enviroment" {
  default = true
}
variable "aws_region" {
  default = "us-east-1"
}
variable "dlq" {
  default = true
}
variable "dlq_retries" {
  default = 3
}