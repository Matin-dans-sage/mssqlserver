<img src="https://img.shields.io/badge/MSSQL%20SERVER-CC2927?style=for-the-badge&logo=Python&logoColor=white"> <img src="https://img.shields.io/badge/DOCKER-2496ED?style=for-the-badge&logo=Python&logoColor=white">


## Installation

```bash
git clone https://github.com/Matin-dans-sage/mssqlserver.git

cd ./mssqlserver

vi ./docker-compose.yml
(line 17) Change for SA_PASSWORD: MSSQLPASSWORD
Change the value of MSSQLPASSWORD to what you want.


sh ./mssql_make.sh
(y : install / n : cancel)

```

## Notice !

The SA_PASSWORD must be 8 characters or more and contain a combination of uppercase letters, lowercase letters, special characters, and numbers to avoid the following error.
```
 ERROR: Unable to set system administrator password: Password validation failed. The password does not meet SQL Server password policy requirements because it is too short. The password must be at least 8 characters..
 ERROR: Unable to set system administrator password: Password validation failed. The password does not meet SQL Server password policy requirements because it is not complex enough. The password must be at least 8 characters long and contain characters from three of the following four sets: Uppercase letters, Lowercase letters, Base 10 digits, and Symbols..
 
```
