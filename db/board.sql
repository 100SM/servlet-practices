-- board

desc board;

select b.no, b.title, b.contents, a.name from user a, board b where a.no=b.user_no order by b.g_no desc, b.o_no asc;


SELECT 
    no,
    title,
    contents,
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
    title LIKE '%검색어%'
ORDER BY g_no DESC , o_no ASC;


-- insert
insert into board values(null, 'testTitle', 'testContent', 0, ifnull((select max(g_no)+1 from board), 1), 1, 1, now(), 1);