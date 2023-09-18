```
1. 서버에 해당 파일들을 동일 경로에 묶어서 업로드
2. 해당 경로로 이동
3. mssql_make.sh 스크립트 실행 
   (sh mssql_make.sh)
4. y : 설치 / n : 취소
```

```
1. SA_PASSWORD는 8자 이상 대소문자 특무순자해야 아래의 오류를 범하지 않음.
 ERROR: Unable to set system administrator password: Password validation failed. The password does not meet SQL Server password policy requirements because it is too short. The password must be at least 8 characters..
 ERROR: Unable to set system administrator password: Password validation failed. The password does not meet SQL Server password policy requirements because it is not complex enough. The password must be at least 8 characters long and contain characters from three of the following four sets: Uppercase letters, Lowercase letters, Base 10 digits, and Symbols..
 
```