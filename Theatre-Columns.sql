INSERT INTO customer(
	customer_id, first_name, last_name, address, billing_info
) VALUES (1, 'John', 'Son', '123 st mato, aa 00001', '0987-6543-2109');

INSERT INTO order_(
	order_id, customer_id, ticket_id, food_id, sub_total, total_cost
) VALUES (2, 1, 3, 4, 12.50, 30.40)

INSERT INTO concession(
	food_id, food_name, amount, customer_id
) VALUES (18, 'French Fries', 3, 1)

INSERT INTO ticket(
	ticket_id, film_id, order_date, sub_total, total_cost
) VALUES (3, 4, )