# PostgreSQL

## 1. Dirty read

Not reproducible since READ UNCOMMITTED acts as READ COMMITTED.
Returns last commited value:
![alt text](image-10.png)

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

But SERIALIZABLE prevents two inserts from concurrent transactions (Write skew):
![alt text](image-7.png)


# MS SQL Server

## 1. Dirty read

Reproducible in READ UNCOMMITTED:
![alt text](image-8.png)

Non-reproducible in READ COMMITTED, READ operation is blocked!:
![alt text](image-9.png)

Non-reproducible in REPEATABLE READ, SERIALIZABLE. WRITE operation is blocked!:
![alt text](image-11.png)

Non-reproducible in SNAPSHOT, no blocking:
![alt text](image-17.png)


## 2. Lost update

Reproducible in READ UNCOMMITTED:
![alt text](image-12.png)

Reproducible in READ COMMITTED. Second write is BLOCKED until first transaction completes, but then overwrites the value:
![alt text](image-13.png)

Reproducible in REPEATABLE READ. But if both transactions have read operations preceeding write, then deadlock occures and the second transaction rolls back having changes from T1 applied.
![alt text](image-14.png)

Reproducible in SERIALIZABLE:
![alt text](image-15.png)

Non-reproducible in SNAPSHOT:
![alt text](image-16.png)


## 3. Non-repeatable read

Reproducible in READ COMMITTED, also READ operation is blocked!:
![alt text](image-19.png)

Non-reproducible in REPEATABLE READ, SERIALIZABLE. WRITE operation is blocked!
![alt text](image-21.png)

Non-reproducible in SNAPSHOT, no blocking:
![alt text](image-20.png)


## 4. Phantom read

Reproducible in READ COMMITTED, REPEATABLE READ:
![alt text](image-22.png)

Non-reproducible in SERIALIZABLE, SNAPSHOT:
![alt text](image-23.png)


## 5. Write skew

Reproducible in READ COMMITTED, REPEATABLE READ:
![alt text](image-24.png)

Non-reproducible in SERIALIZABLE, deadlock in T2:
![alt text](image-25.png)

Reproducible in SNAPSHOT:
![alt text](image-26.png)

# Summary
![alt text](image-28.png)
https://docs.google.com/spreadsheets/d/1sWbs3z_XUMJo1kOhZ3mikj6bNDD-mkQgijVvWthM8dM/edit?usp=sharing
