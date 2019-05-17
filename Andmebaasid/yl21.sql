SELECT *
FROM bookstore.yl21_Books
WHERE release_date > 2010 AND type = "new"
ORDER BY Title
;

SELECT COUNT(price) FROM bookstore.yl21_books
GROUP BY type
;

select *
from bookstore.yl21_Books
Where release_date < 1970
and type = "used"
and price < 20
;

select count(*)
from bookstore.yl21_Orders
group by year(order_date)
;

select *
from bookstore.yl21_Orders
LEFT JOIN bookstore.yl21_Books ON yl21_Books.id=yl21_Orders.book_id
GROUP BY YEAR (order_date)
;