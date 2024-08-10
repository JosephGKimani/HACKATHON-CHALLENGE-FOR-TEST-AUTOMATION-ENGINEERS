/*let's create the table*/
create table Users (
    UserId int identity PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    CreatedDate DATE NOT NULL
);

/*filler data*/
insert into Users (Username, Password, Email, CreatedDate) values
('Alice', 'AlicePass123', 'alice@example.com', '2024-08-01'),
('Bob', 'BobSecure456', 'bob@example.com', '2024-08-02'),
('Charlie', 'Charlie789!', 'charlie@example.com', '2024-08-03'),
('David', 'DavidPass001', 'david@example.com', '2024-08-04'),
('Eva', 'EvaPass2024', 'eva@example.com', '2024-08-05'),
('Frank', 'Frank123', 'frank@example.com', '2024-08-06'),
('Grace', 'Grace!789', 'grace@example.com', '2024-08-07'),
('Henry', 'Henry2024', 'henry@example.com', '2024-08-08'),
('Ivy', 'IvySecurePass', 'ivy@example.com', '2024-08-09'),
('John', 'John2024', 'john@example.com', '2024-08-10');

/*let's check whether the data has  be succesfully inserted*/
select * from Users;

/* Retrieving all the data that was inserted in the last 30days*/
select * from Users
where CreatedDate > DATEADD(DAY, -30, CURRENT_TIMESTAMP);


/* let's add data beyond 30 days to see if the where clause succesfully filters the data*/

insert into Users (Username, Password, Email, CreatedDate) values
('Liam', 'LiamPass001', 'liam@example.com', '2024-06-30'),
('Mia', 'MiaSecure789', 'mia@example.com', '2024-06-25'),
('Noah', 'NoahPass123', 'noah@example.com', '2024-06-15'),
('Olivia', 'Olivia456!', 'olivia@example.com', '2024-06-10'),
('Sophia', 'Sophia!789', 'sophia@example.com', '2024-06-05'),
('James', 'JamesPass001', 'james@example.com', '2024-06-01'),
('Amelia', 'Amelia123', 'amelia@example.com', '2024-05-28'),
('Isabella', 'IsabellaPass2024', 'isabella@example.com', '2024-05-20'),
('Benjamin', 'Benjamin789!', 'benjamin@example.com', '2024-05-15'),
('Ethan', 'Ethan2024!', 'ethan@example.com', '2024-05-01');

/*succesfully filters data that is older than the last 30 days*/
Select * from Users
where CreatedDate > DATEADD(DAY, -30, GETDATE());

/* find total number of users with a specific domain in their email*/

select COUNT(*) from Users
where Email LIKE '%example.com%';

/*Updating User Bob Email from bob@example.com to bob@gmail.com*/
update Users
set Email = 'bob@gmail.com'
where UserId=2;


select * from Users