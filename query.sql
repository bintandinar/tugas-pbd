/*mencari jarak order antara 100 dan 200 dan nama drivernya */
use gojek;
select `order`.ID_Order, driver.ID_Driver, driver.NamaDriver, jaraktempuh.jarak as jarak 
from `order`
join driver
on `order`.ID_Driver = driver.ID_Driver
join jaraktempuh
on `order`.ID_Driver = jaraktempuh.ID_Driver
where jaraktempuh.jarak between 1000 and 2000
group by ID_Driver;
