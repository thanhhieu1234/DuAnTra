CREATE DATABASE ASM_JAVA5;
USE ASM_JAVA5;

CREATE TABLE tbl_category_product(
id bigint identity(1,1) primary key,
created_by nvarchar(250),
created_date datetime,
modified_by  nvarchar(250),
modified_date datetime,
name_code nvarchar(50),
status bit ,
title nvarchar(250)
);

CREATE TABLE tbl_size(
id bigint identity(1,1) primary key,
created_by nvarchar(250),
created_date datetime,
modified_by  nvarchar(250),
modified_date datetime,
name_size nvarchar(50),
status bit ,
);


CREATE TABLE tbl_user(
id bigint identity(1,1) primary key,
created_by nvarchar(250),
created_date datetime,
modified_by  nvarchar(250),
modified_date datetime,
address nvarchar(250),
admin bit ,
avatar nvarchar(250),
city nvarchar(250),
district nvarchar(250),
email nvarchar(250),
name_code nvarchar(6),
password nvarchar(250),
phone nvarchar(250),
status_activity bit ,
);

CREATE TABLE tbl_product(
id bigint identity(1,1) primary key,
created_by nvarchar(250),
created_date datetime,
modified_by  nvarchar(250),
modified_date datetime,
description nvarchar(250),
detail nvarchar(3000),
image nvarchar(3000),
image_detail nvarchar(3000),
price numeric(19,2),
status bit,
title nvarchar(3000),
fk_category_id bigint FOREIGN KEY REFERENCES tbl_category_product(id),
view_count int
);

CREATE TABLE tbl_order(
id bigint identity(1,1) primary key,
created_by nvarchar(250),
created_date datetime,
modified_by  nvarchar(250),
modified_date datetime,
address nvarchar(50),
buy_date datetime,
full_name nvarchar(250),
phone nvarchar(11),
fk_user_id bigint FOREIGN KEY REFERENCES tbl_user(id),
);

CREATE TABLE tbl_product_order(
id bigint identity(1,1) primary key,
created_by nvarchar(250),
created_date datetime,
modified_by  nvarchar(250),
modified_date datetime,
quantity int,
total numeric(19,2),
fk_order_id bigint FOREIGN KEY REFERENCES tbl_order(id),
fk_product_id bigint FOREIGN KEY REFERENCES tbl_product(id),
fk_size_id bigint FOREIGN KEY REFERENCES tbl_size(id),

);
select * from tbl_size
INSERT INTO ASM_JAVA5.[dbo].[tbl_category_product] ([created_by], [created_date], [modified_by], [modified_date], [name_code], [status], [title])
VALUES ('admin', '2023-06-02', 'admin', '2023-06-02', 'tra-sua', 1, N'Trà sữa'),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'tra', 1, N'Trà'),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'ca-phe', 1, N'Cà phê'),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'sinh-to', 1, N'Sinh tố'),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'nuoc-ngot', 1, N'Nước ngọt');

	       select * from tbl_category_product
	   	 
		   select * from tbl_product where  tbl_product.price between  10 and   20
		   select * from tbl_order  order by buy_date desc
		 
		   select * from tbl_size
		   select * from tbl_user
		   
		   select po.quantity , sum(total)  from tbl_product_order as po  inner join tbl_order as o on po.id = o.id
		   inner join tbl_size as s on o.id = s.id inner join tbl_product as p on s.id = p.id
		   group by po.quantity

		   select tbl_product_order.fk_order_id, sum(tbl_product_order.total) from tbl_product_order group by tbl_product_order.fk_order_id

		   select *  from tbl_product_order 



-- thêm dữ liệu size
	 INSERT INTO ASM_JAVA5.[dbo].[tbl_size]
(
    [created_by],
    [created_date],
    [modified_by],
    [modified_date],
    [name_size],
    [status]
)
VALUES
    ('John', '2023-06-01', 'Jane', '2023-06-02', 'L', 1),
    ('Mike', '2023-06-03', 'Sarah', '2023-06-04', 'M', 1),
    ('David', '2023-06-05', 'Emily', '2023-06-06', 'S', 1);
  	   
-- thêm dữ liệu product
select * from tbl_product

INSERT INTO ASM_JAVA5.[dbo].tbl_product(
    [created_by],
    [created_date],
    [modified_by],
    [modified_date],
    [description],
    [detail],
    [image],
    [image_detail],
    [price],
    [status],
    [title],
    [fk_category_id],
	[view_count]
	)VALUES

	( 'John', GETDATE(), 'Jane', GETDATE(), N'Sinh tố măng cục: Sinh tố măng cục thường được làm từ bơ chín, sữa tươi, đá và đường', N'Sinh tố bơ: Sinh tố bơ thường được làm từ bơ chín, sữa tươi, đá và đường. Với màu xanh mát của bơ và hương vị béo ngậy, sinh tố bơ là một lựa chọn thú vị và giàu chất béo lành mạnh.', 'https://tocotocotea.com/wp-content/uploads/2023/04/Ca%CC%80-Phe%CC%82-Su%CC%9B%CC%83a-Mochi.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/04/Ca%CC%80-Phe%CC%82-Su%CC%9B%CC%83a-Mochi.jpg', 15.99, 1, N'Sinh tố măng cục', 4,0),
    ( 'John', GETDATE(), 'Jane', GETDATE(), N'Sinh tố xoài: Sinh tố xoài thường được làm từ xoài chín mọng, sữa tươi và đá', N'Sinh tố xoài: Sinh tố xoài thường được làm từ xoài chín mọng, sữa tươi và đá. Với hương vị ngọt và chua của xoài, sinh tố này là một lựa chọn tuyệt vời để thưởng thức trong mùa hè nóng bức.', 'https://tocotocotea.com/wp-content/uploads/2023/04/Ca%CC%80-Phe%CC%82-Den-Da%CC%81-ToCo.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/04/Ca%CC%80-Phe%CC%82-Den-Da%CC%81-ToCo.jpg', 15.99, 1, N'Sinh tố xoài', 4,1),
    ( 'John', GETDATE(), 'Jane', GETDATE(), N'Sinh tố việt quất: Sinh tố việt quất là sự pha trộn giữa việt quất tươi, sữa tươi và đá', N'Sinh tố việt quất: Sinh tố việt quất là sự pha trộn giữa việt quất tươi, sữa tươi và đá. Với màu tím đậm và hương vị chua ngọt đặc trưng của việt quất, nó cung cấp nhiều chất chống oxy hóa và có lợi cho sức khỏe tim mạch.', 'https://tocotocotea.com/wp-content/uploads/2023/04/Ca%CC%80-Phe%CC%82-Su%CC%9B%CC%83a-Da%CC%81-ToCo-1.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/04/Ca%CC%80-Phe%CC%82-Su%CC%9B%CC%83a-Da%CC%81-ToCo-1.jpg', 25.99, 1, N'Sinh tố việt quất', 4,12),
    ( 'John', GETDATE(), 'Jane', GETDATE(), N'Sinh tố dứa: Sinh tố dứa được làm từ dứa tươi, nước dừa và đường', N'Sinh tố dứa: Sinh tố dứa được làm từ dứa tươi, nước dừa và đường. Hương vị dứa tươi và mát lạnh của nước dừa kết hợp tạo nên một loại sinh tố thơm ngon và giàu chất dinh dưỡng', 'https://tocotocotea.com/wp-content/uploads/2023/04/Tra%CC%80-O%CC%82-Long-Du%CC%9B%CC%81a-Nhie%CC%A3%CC%82t-Do%CC%9B%CC%81i.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/04/Tra%CC%80-O%CC%82-Long-Du%CC%9B%CC%81a-Nhie%CC%A3%CC%82t-Do%CC%9B%CC%81i.jpg', 35.99, 1, N'Sinh tố dứa', 4,4),
    ( 'John', GETDATE(), 'Jane', GETDATE(), N'Sinh tố chuối: Sinh tố chuối là sự pha trộn hoàn hảo giữa chuối chín mọng', N'Sinh tố chuối: Sinh tố chuối là sự pha trộn hoàn hảo giữa chuối chín mọng, sữa tươi và đá. Đây là một loại sinh tố bổ dưỡng với hương vị ngọt ngào và kem mịn.', 'https://tocotocotea.com/wp-content/uploads/2023/04/Tra%CC%80-Su%CC%9B%CC%83a-Da%CC%82u-Ta%CC%82y-Pinky.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/04/Tra%CC%80-Su%CC%9B%CC%83a-Da%CC%82u-Ta%CC%82y-Pinky.jpg', 45.99, 1, N'Trà Sữa Dâu Tây', 1,5),
    ( 'John', GETDATE(), 'Jane', GETDATE(), N'Sinh tố cà chua: Sinh tố cà chua là sự kết hợp giữa cà chua chín mọng', N'Sinh tố cà chua: Sinh tố cà chua là sự kết hợp giữa cà chua chín mọng, nước cà chua và đá. Màu đỏ tươi sáng của cà chua kết hợp với hương vị chua ngọt và mát lạnh tạo nên một loại sinh tố thú vị và giàu chất chống oxy hóa.', 'https://tocotocotea.com/wp-content/uploads/2023/04/Tra%CC%80-Su%CC%9B%CC%83a-Socola-Mochi.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/04/Tra%CC%80-Su%CC%9B%CC%83a-Socola-Mochi.jpg', 45.99, 1, N'Trà Sữa Socola Mochi', 1,1),
    ( 'John', GETDATE(), 'Jane', GETDATE(), N'Sinh tố anh đào: Sinh tố anh đào thường được làm từ anh đào tươi, sữa tươi và đá', N'Sinh tố anh đào: Sinh tố anh đào thường được làm từ anh đào tươi, sữa tươi và đá. Với màu đỏ tươi rực rỡ và hương vị ngọt ngào, sinh tố anh đào là một lựa chọn tuyệt vời để tận hưởng hương vị của loại quả này.', 'https://tocotocotea.com/wp-content/uploads/2023/04/Ho%CC%82%CC%80ng-Tra%CC%80-Su%CC%9B%CC%83a-ToCo-1.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/04/Ho%CC%82%CC%80ng-Tra%CC%80-Su%CC%9B%CC%83a-ToCo-1.jpg', 25.99, 1, N'Hồng Trà Sữa Toco', 2,2),
    ( 'John', GETDATE(), 'Jane', GETDATE(), N'Sinh tố mận: Sinh tố mận được làm từ mận chín mọng, sữa tươi và đá', N'Sinh tố mận: Sinh tố mận được làm từ mận chín mọng, sữa tươi và đá. Mận có màu tím đen và hương vị chua ngọt đặc trưng, tạo nên một loại sinh tố độc đáo và giàu chất chống oxy hóa.', 'https://tocotocotea.com/wp-content/uploads/2022/04/tra%CC%80-xoa%CC%80i-bu%CC%9Bo%CC%9B%CC%89i-ho%CC%82%CC%80ng.png', 'https://tocotocotea.com/wp-content/uploads/2022/04/tra%CC%80-xoa%CC%80i-bu%CC%9Bo%CC%9B%CC%89i-ho%CC%82%CC%80ng.png', 25.99, 1, N'Trà Xoài Bưởi Hồng', 2,44),
    ( 'John', GETDATE(), 'Jane', GETDATE(), N'Ô Long Mận Chanh Leo', N'Một ly trà  truyền thống có hương vị đậm đà của trà trộn lẫn với hương vị ngọt ngào của chanh leo', 'https://tocotocotea.com/wp-content/uploads/2023/05/O-Long-Man-Chanh-Leo.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/05/O-Long-Man-Chanh-Leo.jpg', 25.99, 1, N'Ô Long Mận Chanh Leo', 2,55),
    ( 'Mike', GETDATE(), 'Sarah', GETDATE(), N'Trà sữa hồng trà: Ly trà sữa hồng trà được làm từ lá trà hồng mịn', N'Trà sữa hồng trà: Ly trà sữa hồng trà được làm từ lá trà hồng mịn, tạo ra một màu sắc và hương vị độc đáo. Khi kết hợp với sữa, nó tạo thành một trà sữa thơm ngon và mềm mịn', 'https://tocotocotea.com/wp-content/uploads/2023/05/O-Long-Man-Kem-Pho-Mai.jpg', 'https://tocotocotea.com/wp-content/uploads/2023/05/O-Long-Man-Kem-Pho-Mai.jpg', 30.99, 1, N'Trà sữa socola mint', 1,12),
    ( 'David', GETDATE(), 'Emily', GETDATE(), N'Trà sữa socola mint: Đây là một ly trà sữa vị socola mát lạnh với một chút hương vị bạc hà. ', N'Trà sữa socola mint: Đây là một ly trà sữa vị socola mát lạnh với một chút hương vị bạc hà. Sự kết hợp giữa socola ngọt và hương thơm của bạc hà tạo ra một ly trà sữa độc đáo.', 'https://tocotocotea.com/wp-content/uploads/2023/04/z4282431170593_08b7a70ad0ed88e6068b2d0118e66759.jpg', 'Image detail 3', 15.99, 1, N'Trà sữa socola mint', 1,54),
    ( 'Lisa', GETDATE(), 'Mark', GETDATE(), N'Trà sữa truyền thống: Một ly trà sữa truyền thống có hương vị đậm đà của trà trộn lẫn với hương vị ngọt ngào của sữa tươi.', N'Trà sữa truyền thống: Một ly trà sữa truyền thống có hương vị đậm đà của trà trộn lẫn với hương vị ngọt ngào của sữa tươi. Nó thường được phục vụ với một lớp bọt sữa mịn trên cùng và có thể được làm từ trà đen hoặc trà xanh', 'https://tocotocotea.com/wp-content/uploads/2021/12/Hi%CC%80nh-a%CC%89nh-sp-website_1000x1000_choco-ngu%CC%83-co%CC%82%CC%81c-kem-cafe.png', 'https://tocotocotea.com/wp-content/uploads/2021/12/Hi%CC%80nh-a%CC%89nh-sp-website_1000x1000_choco-ngu%CC%83-co%CC%82%CC%81c-kem-cafe.png', 15.99, 1, N'Trà sữa truyền thống', 1,99),
    ( 'Alex', GETDATE(), 'Jessica', GETDATE(), N'Trà sữa hạt trân châu: Ly trà sữa hạt trân châu có thêm hạt trân châu, một loại bột bánh mì nấu chín màu đen', N'Trà sữa hạt trân châu: Ly trà sữa hạt trân châu có thêm hạt trân châu, một loại bột bánh mì nấu chín màu đen, có vị đậm đà và đàn hồi. Hạt trân châu thêm phần thú vị và cung cấp trải nghiệm nhai đặc biệt khi kết hợp với trà và sữa.', 'https://tocotocotea.com/wp-content/uploads/2021/12/Hi%CC%80nh-a%CC%89nh-sp-website_1000x1000_ho%CC%82%CC%80ng-tra%CC%80-ngu%CC%83-co%CC%82%CC%81c-kem-cafe.png', 'https://tocotocotea.com/wp-content/uploads/2021/12/Hi%CC%80nh-a%CC%89nh-sp-website_1000x1000_ho%CC%82%CC%80ng-tra%CC%80-ngu%CC%83-co%CC%82%CC%81c-kem-cafe.png', 29.99, 1, N'Trà sữa hạt trân châu', 1,14),
	( 'Alex', GETDATE(), 'Jessica', GETDATE(), N'Trà sữa sô-cô-la: Ly trà sữa sô-cô-la kết hợp hương vị ngọt ngào của sô-cô-la và hương vị đậm đà của trà', N'Trà sữa sô-cô-la: Ly trà sữa sô-cô-la kết hợp hương vị ngọt ngào của sô-cô-la và hương vị đậm đà của trà. Hỗn hợp này tạo ra một ly trà sữa thơm ngon và thú vị cho những ai yêu thích sô-cô-la.', 'https://tocotocotea.com/wp-content/uploads/2021/01/Tra-Sua-Ba-Anh-Em-1-copy.jpg', 'https://tocotocotea.com/wp-content/uploads/2021/01/Tra-Sua-Ba-Anh-Em-1-copy.jpg', 29.99, 1, N'Trà sữa sô-cô-la', 1,9),
    ( 'Alex', GETDATE(), 'Jessica', GETDATE(), N'Trà sữa lá sen: Ly trà sữa lá sen được làm từ lá sen tươi', N'Trà sữa lá sen: Ly trà sữa lá sen được làm từ lá sen tươi, tạo ra một hương vị thanh mát và thảo dược. Khi kết hợp với sữa, nó tạo thành một ly trà sữa tinh tế và độc đáo.', 'https://tocotocotea.com/wp-content/uploads/2021/01/Tra-O-Long-Sua-2-copy.jpg', 'https://tocotocotea.com/wp-content/uploads/2021/01/Tra-O-Long-Sua-2-copy.jpg', 15.99, 1, N'Trà sữa lá sen', 1,6),
    ( 'Alex', GETDATE(), 'Jessica', GETDATE(), N'Trà sữa mật ong: Ly trà sữa mật ong có hương vị ngọt ngào và ấm áp của mật ong tự nhiên', N'Trà sữa mật ong: Ly trà sữa mật ong có hương vị ngọt ngào và ấm áp của mật ong tự nhiên. Sự kết hợp giữa mật ong và sữa tạo ra một ly trà sữa ngon và bổ dưỡng.', 'https://tocotocotea.com/wp-content/uploads/2021/01/tra_xanh_xoai_35d69664c31248faaf3eeade044035ba_grande.jpg', 'https://tocotocotea.com/wp-content/uploads/2021/01/tra_xanh_xoai_35d69664c31248faaf3eeade044035ba_grande.jpg', 39.99, 1, N'Trà sữa mật ong', 1,90),
    ( 'Alex', GETDATE(), 'Jessica', GETDATE(), N'Trà sữa matcha: Ly trà sữa matcha được làm từ bột trà matcha xanh mịn', N'Trà sữa matcha: Ly trà sữa matcha được làm từ bột trà matcha xanh mịn, tạo ra một màu xanh đặc trưng và hương vị đắng ngọt đặc biệt. Sự kết hợp của matcha và sữa tạo nên một ly trà sữa thơm ngon và bổ dưỡng.', 'https://tocotocotea.com/wp-content/uploads/2021/01/Tra-Sua-Matcha-1-copy.jpg', 'https://tocotocotea.com/wp-content/uploads/2021/01/Tra-Sua-Matcha-1-copy.jpg', 29.99, 1, N'Trà sữa matcha', 1,86),
    ( 'Alex', GETDATE(), 'Jessica', GETDATE(), N'Trà sữa hoa quả tổng hợp: Đây là một ly trà sữa kết hợp hương vị trà và sữa với nhiều loại trái cây', N'Trà sữa hoa quả tổng hợp: Đây là một ly trà sữa kết hợp hương vị trà và sữa với nhiều loại trái cây tổng hợp như dứa, xoài, dâu tây, chanh và cam. Hương vị trái cây đa dạng tạo ra một trà sữa tươi mát và sảng khoái.', 'https://tocotocotea.com/wp-content/uploads/2022/04/tra%CC%80-xoa%CC%80i-bu%CC%9Bo%CC%9B%CC%89i-ho%CC%82%CC%80ng.png', 'https://tocotocotea.com/wp-content/uploads/2022/04/tra%CC%80-xoa%CC%80i-bu%CC%9Bo%CC%9B%CC%89i-ho%CC%82%CC%80ng.png', 29.99, 1, N'Trà sữa hoa quả tổng hợp', 1,66)



-- thêm dữ liệu user
INSERT INTO tbl_user ([created_by], [created_date], [modified_by], [modified_date], [address], [admin], [avatar], [city],  [district], [email], [name_code], [password], [phone], [status_activity])
VALUES
('John Doe', '2023-06-05', 'Jane Smith', '2023-06-05', '123 Main St', 1, 'avatar1.jpg', 'New York', 'District A', 'john1.doe@example.com', '123', 'password123', '123456789', 1),
(' Doe', '2023-06-05', 'Jane Smith', '2023-06-05', '123 Main St', 0, 'avatar2.jpg', 'New York', 'District A', 'john2.doe@example.com', '123', 'password123', '123456789', 1),
('J Doe', '2023-06-05', 'Jane Smith', '2023-06-05', '123 Main St', 0, 'avatar3.jpg', 'New York', 'District A', 'john3.doe@example.com', '123', 'password123', '123456789', 0),
('n Dofe', '2023-06-05', 'Jane Smith', '2023-06-05', '123 Main St', 0, 'avatar4.jpg', 'New York', 'District A', 'john4.doe@example.com', '123', 'password123', '123456789', 1),
('Jo2hn 3Doe', '2023-06-05', 'Jane Smith', '2023-06-05', '123 Main St', 1, 'avatar5.jpg', 'New York', 'District A', 'john5.doe@example.com', '123', 'password123', '123456789', 0),
('1John 2Doe', '2023-06-05', 'Jane Smith', '2023-06-05', '123 Main St', 0, 'avatar6.jpg', 'New York', 'District A', 'john6.doe@example.com', '123', 'password123', '123456789', 1),
('Jvaohn Doeva', '2023-06-05', 'Jane Smith', '2023-06-05', '123 Main St', 0, 'avatar7.jpg', 'New York', 'District A', 'john7.doe@example.com', '123', 'password123', '123456789', 1),
('baJohn baDoe', '2023-06-05', 'Jane Smith', '2023-06-05', '123 Main St', 1, 'avatar8.jpg', 'New York', 'District A', 'john8.doe@example.com', '123', 'password123', '123456789', 0);

