/* 
 * Напишіть SQL запит, який буде відображати таблицю `order_details` та поле `customer_id` з таблиці `orders` відповідно для кожного поля запису з таблиці `order_details`.

 * Це має бути зроблено за допомогою вкладеного запиту в операторі `SELECT`.
 */
SELECT
  od.*
, (
    SELECT
      customer_id
    FROM
      topic_3.orders o
    WHERE
      o.id = od.order_id
  ) AS customer_id
FROM
  topic_3.order_details od;