/* 
 * 4. розв'яжіть завдання 3, використовуючи оператор WITH для створення тимчасової таблиці temp. Якщо ваша версія MySQL більш рання, ніж 8.0, створіть цей запит за аналогією до того, як це зроблено в конспекті.
 */
WITH
  tmp_od AS (
    SELECT
      od.*
    FROM
      topic_3.order_details od
    WHERE
      od.quantity > 10
  )
SELECT
  tmp_od.order_id
, AVG(tmp_od.quantity) AS avg_quantity
FROM
  tmp_od
GROUP BY
  tmp_od.order_id;