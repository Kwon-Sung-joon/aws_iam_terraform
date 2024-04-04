
# Terraform IAM 관리

- 사용 IDE : InteliJ
- 소스 관리 : github
- CodeBuild

## Terraform 모듈 구성

- iam_groups : groups 생성 후 관리형 정책 추가
  ```terraform
   type = map(object({
    group_name = string
    group_path = string
    mgd_policy = set(string)
  }))
  ```
- iam_policy : 사용자 지정 정책 생성 후 원하는 groups 또는 user 에 추가
  ```terraform
    type = map(object({
    policy_name = string
    policy_path = string
    policy_desc = string
    policy = any
    policy_attach_roles = set(string)
    policy_attach_users = set(string)
    policy_attach_groups = set(string)
  }))
  ```
- iam_users : user 생성 후 group 매핑
  ```terraform
    type = map(object({
    user_name  = string
    group_name = set(string)
  }))
    
  ```
  
