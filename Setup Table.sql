#master user / Pelanggan
CREATE TABLE ms_pelanggan(msp_id int AUTO_INCREMENT,   #Sequence Auto number  primary key
                          msp_user_id varchar(20),     #user id 
                          msp_user_name varchar(50),   #user name 
                          msp_password varchar(15),    #password
                          msp_stat_user smallint(1),   #status user Admin atau Pelanggan
                          msp_email varchar(50),       #alamat Email   
                          msp_last_order date,         #tanggal terakhir Order . kuncian supaya tidak bisa 2 kali order yang sama
                          msp_user_create   varchar(50), #untuk control user create
                          msp_date_create   date,
                          msp_user_update   varchar(50),
                          msp_date_update   date)

#master UMKM Parent
CREATE TABLE ms_umkm_head(muh_id int NOT NULL AUTO_INCREMENT,  #sequence auto number , primary key
                          muh_id_umkm varchar(15),    #id umkm 
                          muh_nama varchar(50),       #nama umkm   
                          muh_alamat varchar(100),    #alamat umkm
                          muh_telp varchar(20),       #nomor telp umkm 
                          muh_email varchar(20),      #alamat email umkm
                          muh_aktif tinyint(1),       #status aktif umkm 
                          muh_user_create varchar(50), #untuk control user 
                          muh_tgl_create date,
                          muh_user_update varchar(50),
                          muh_tgl_update date)    


#master UMKM chield
CREATE TABLE ms_umkm_detl(mud_id int AUTO_INCREMENT,   #sequence auto number primary key
                          mud_muh_id int,              #foeign key dari table ms_umkm_head  
                          mud_nama_produk varchar(50), #nama produk umkm , contoh nasi ->unduk special
                          mud_detail_isi varchar(100), #Detail dari produk umkm ,contoh -> telur dadar,bihun, tempe
                          mud_url_gambar varchar(100), #url folder gambar
                          mud_harga int,               
                          mud_user_create varchar(50),
                          mud_tgl_create date,
                          mud_user_update varchar(50),
                          mud_tgl_update date);
#Transaksi order 
CREATE TABLE trs_order_head (toh_id int AUTO_INCREMENT,#sequence auto number primary key
                             toh_no_order varchar(15), #nomor order
                             toh_tgl varchar(15),      #tanggal order 
                             toh_msp_id int,           #master user id yang order , foregn key 
                             toh_tot_order int,        #total order pembelian
                             toh_stat_bayar tinyint(1), #status pembayaran, sudah di bayar atau belum 
                             toh_penerima      varchar(100), #penerima Order 
                             toh_Telp          varchar(100), #telp penerima order
                             toh_alamat_kirim1 varchar(100), #alamat kirim 1
                             toh_alamat_kirim2 varchar(100), #alamat kirim 2
                             toh_user_create varchar(50), 
                             toh_tgl_create date, 
                             toh_user_update varchar(50),
                             toh_tgl_update date);

CREATE TABLE trs_order_detl (tod_id int AUTO_INCREMENT,       #sequence auto number primary key
                            tod_toh_id int ,                 #foreign key dari table trs_order_head  
                            tod_muh_id_umkm varchar(15),     #id umkm untuk ID Produk  foreign key dari ms_umkm_detl
                            tod_mud_nama_produk varchar(50), #nama produk umkm , contoh nasi ->unduk special
                            tod_mud_harga int,               #harga Produk 
                            tod_qty_order int,               #jumlah Qty Order   
                            tod_total_order int,             #Total order
                            tod_user_create varchar(50), 
                            tod_tgl_create date, 
                            tod_user_update varchar(50),
                            tod_tgl_update date);
   






                          
                              
                                
