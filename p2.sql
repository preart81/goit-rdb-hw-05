/* 
 * 2. Напишіть SQL запит, який буде відображати таблицю order_details. Відфільтруйте результати так, щоб відповідний запис із таблиці orders виконував умову shipper_id=3.
 */
SELECT
  od.*
FROM
  topic_3.order_details od
WHERE
  od.order_id IN (
    SELECT
      o.id
    FROM
      topic_3.orders o
    WHERE
      o.shipper_id = 3
  );