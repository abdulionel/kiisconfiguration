CREATE TABLE `bkpsdm_silat_biodata_s`(                            
   `pegawai_id` int,                                
   `skpd_id` varchar(15),                           
   `nip_baru` varchar(20),                          
   `nip_lama` varchar(10),                          
   `nuptk` varchar(20),                             
   `status_kep_id` int,                             
   `kppn_id` int,                                   
   `nama` varchar(100),                             
   `gelar_depan` varchar(30),                       
   `gelar_belakang` varchar(30),                    
   `tempat_lahir` varchar(30),                      
   `nik` varchar(25),                               
   `jk` varchar(4),                                 
   `agama_id` varchar(4),                           
   `status_kawin_id` varchar(4),                    
   `alamat` varchar(300),                           
   `domisili_id` int,                               
   `alamat_domisili` varchar(300),                  
   `kode_pos` varchar(6),                           
   `kode_pos_domisili` varchar(6),                  
   `no_hp` varchar(12),                             
   `email` varchar(50),                             
   `aktif` varchar(4),                              
   `tgl_input` date) 
    CLUSTERED BY (pegawai_id) INTO 4 BUCKETS 
    STORED AS ORC TBLPROPERTIES ('transactional'='true');
  
CREATE INDEX bkpsdm_silat_biodata_s_idx_pegawai_id ON TABLE bkpsdm_silat_biodata_s(pegawai_id) AS 'BITMAP' WITH DEFERRED REBUILD;
CREATE INDEX bkpsdm_silat_biodata_s_idx_nip ON TABLE bkpsdm_silat_biodata_s(nip_baru) AS 'BITMAP' WITH DEFERRED REBUILD;

 
