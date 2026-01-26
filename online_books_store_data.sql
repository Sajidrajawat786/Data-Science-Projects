create table Books (
	Book_ID int primary key,
	Title varchar(100),
	Author varchar(100),
	Genre varchar(50),
	Published_Year int, 
	Price numeric(10, 2),
	Stock int
);

create table Customers(
	Customer_ID int primary key,
	Name varchar(100),
	Email varchar(100),
	Phone varchar(15),
	City varchar(50),
	Country varchar(150)
);

create table Orders(
	Order_ID int primary key,
	Customer_ID int references Customers(Customer_ID),
	Book_ID int references Books(Book_ID),
	Order_Date text,
	Quantity int,
	Total_Amount numeric(10,2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;
drop table Orders;
drop table Customers;
drop table Books;

--Retrieve all books in the "fiction" genre:
select * from Books
where genre='Fiction';

--2) find books published after the year 1950:
select * from Books
where published_year>1950;

--3) list all customers from the canada:
select * from customers
where country='Canada';

--4) show orders placed in november 2023:
select * from Orders
where order_date between'01-11-2023' and '30-11-2023';

--5) Retrieve the total stock of books available:
select sum(stock) as total_stock from Books;

--6) find the details of the most expensive book:
select * from Books  order by price desc limit 1;

--7) show all customers who ordered more than 1 quantity og a book:
select * from orders
where quantity>1;

--8) retrieve all orders where the total amount exceeds $20:
select * from orders where total_amount >20;

--9) list all genres available in the books book:
select distinct genre from Books;

--10) find the book with the lowest stock:
select * from Books order by stock limit 1;

--11) calculate the total revenue generated from orders:
select sum(total_amount) as total_revenueve from orders;

--12) retrieve the total number of books sold for each genre:
select * from orders;
select b.genre,sum(o.quantity) as total_books_sold from orders o
join Books b on o.book_id = b.book_id
group by b.genre;

--13) find the average price of books in the 'Fantasy' genre:
select avg(price) as average_price
from Books
where genre = 'Fantasy';

--14) list customers who have placed at least 2 orders:
select o.customer_id,c.name, count(o.Order_id) as ORDER_COUNT
FROM orders o
join customers c on o.customer_id=c.customer_id
group by o.customer_id, c.name
having count(order_id) >=2;.

--15) find most frequently ordered book:
select o.book_id,b.title ,count(o.order_id) as order_count
from orders o
join books b on o.book_id=b.book_id
group by o.book_id,b.title
order by order_count desc limit 1;

--16) show the top 3 most expensive books of 'Fantasy' genre:
select * from books
where genre = 'Fantasy'
order by price desc limit 3;

--17) Retrieve the total quantity of books sold by each author:

select b.author, sum(o.quantity) as total_books_sold
from orders o
join books b on o.book_id=b.book_id
group by b.author;

--18) List the cities where customers who spent over $30 are located:
select distinct c.city,total_amount
from orders o
join customers c on o.customer_id=c.customer_id
where o.total_amount > 30;

--19) Find the customer who spent the most on orders:
select c.customer_id, c.name,sum(total_amount) as total_spent
from orders o
join customers c on o.customer_id=c.customer_id
group by c.customer_id,c.name
order by total_spent desc limit 1;

--20) calculate the stock remaining after fulfilling all orders:

select b.book_id,b.title,b.stock,coalesce(sum(quantity),0) as order_quantity,
b.stock- coalesce(sum(o.quantity),0) as remaining_quantity
from books b
left join orders o on b.book_id=o.book_id
group by b.book_id order by b.book_id;





