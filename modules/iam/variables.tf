variable "users" {
  description = "username to create user"
  type = list(string)
}

variable "groups" {
  description = "groupname to create group"
  type = list(object({
    name: string,
    path: optional(string),
  }))
}

variable "policies" {
  description = "policy content to create policy"
  type = list(object({
    name: string,
    policy: string,
    path: optional(string),
  }))
}
