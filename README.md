# PostgreSQL

## 1. Dirty read

Not reproducible since READ UNCOMMITTED acts as READ COMMITTED.

![alt text](image.png)

## 2. Lost update

Reproducible in READ COMMITTED:
![alt text](image-1.png)

Non-reproducible in REPEATABLE READ and up:
![alt text](image-2.png)
Update in the second transaction fails. 

## 3. Non-repeatable read

Reproducible in READ COMMITTED:
![alt text](image-4.png)

Non-reproducible in REPEATABLE READ and up:
![alt text](image-3.png)

## 4. Phantom read

Reproducible in READ COMMITTED:
![alt text](image-5.png)

Non-reproducible in REPEATABLE READ and up:
![alt text](image-6.png)

