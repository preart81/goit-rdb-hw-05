/* 
 * 3. Напишіть SQL запит, вкладений в операторі FROM, який буде обирати рядки з умовою quantity>10 з таблиці order_details. Для отриманих даних знайдіть середнє значення поля quantity — групувати слід за order_id.
 */
SELECT
  tmp_od.order_id
, AVG(tmp_od.quantity) AS avg_quantity
FROM
  (
    SELECT
      od.*
    FROM
      topic_3.order_details od
    WHERE
      od.quantity > 10
  ) AS tmp_od
GROUP BY
  tmp_od.order_id;