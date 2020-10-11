use truyum;
select * from menu where date_of_launch<now() and 'active_status'='Yes';
select item_name from menu where item_id='i4';
update menu
set item_name='Biriyani'
where item_id='i2';

select m.item_name from menu m inner join cart c on m.item_id=c.item_id ;

select sum(m.price) from menu m inner join cart c 
on m.item_id=c.item_id;

delete from cart where item_id='i4';

