
# Terraform IAM 관리


- 사용 IDE : InteliJ
- 소스 관리 : Bitbucket
- CodeBuild 


## 연동 계정
```terraform
- homepage 589566835476
- air 751732153713
- hot 298385711329
- comm 300846112004
- tna_dev 012788139911
- ndc 744690697308
- dw 792931648816
- tna 339927058960
- viet 836881754257
- dms 097345172411
```

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