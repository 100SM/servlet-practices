-- board

desc board;

select b.no, b.title, b.contents, a.name from user a, board b where a.no=b.user_no order by b.g_no desc, b.o_no asc;


SELECT 
    no,
    title,
    content,
    hit,
    g_no,
    o_no,
    depth,
    DATE_FORMAT(reg_date, '%Y/%m/%d %H:%i:%s') AS reg_date,
    user_id,
    user.name as user_name
FROM
    board
        JOIN
    user ON board.user_id = user.id
WHERE
    title LIKE '%%'
ORDER BY g_no DESC , o_no ASC;


-- insert
insert into board values(null, 'testTitle', 'testContent', 0, (select g_no from (select ifnull(max(g_no)+1, 1) as g_no from board) as tmp), 1, 1, now(), 1);
insert into board values(null, ? , ?, 0, (select num from( select ifnull(max(g_no)+1,1) as num from board) tmp), 1, 1, now(), 2);


update board set o_no=o_no+1 where o_no > order_no and g_no = group_no;

-- delete
delete from board where no = 1;