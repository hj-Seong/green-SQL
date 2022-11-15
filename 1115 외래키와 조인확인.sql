/* 외래키와 join  - test 데이터베이스에서 진행*/
/* post table과 comment table 작성 후 원하는 데이터만 출력해서 보기*/
create table post(
	postID int primary key,
    title varchar(100),
    text text
);
create table comment (
	commentID int primary key,
    postID int,
    text text,
    foreign key (postID) references post(postID) 
    on update cascade 
    on delete no action
);

/* post에 대한 데이터 입력*/
insert into post values (1, "첫번째 게시글 입니다","내용을 작성합니다");
insert into post values (2, "두번째", "새로운 내용을 작성합니다");
insert into post values (3, "세번째", "게시글 내용을 작성합니다");
insert into post values (4, "네번째", "빈 내용입니다");
select * from post;

/* comment 데이터 추가 */
insert into comment value (1, 1, "첫번째게시글에 첫번째 댓글");
insert into comment values (2, 1, "첫번째 게시글에 두번째 댓글");
insert into comment values (3, 3, "세번째 게시글 첫번째 댓글");
select *from comment;

