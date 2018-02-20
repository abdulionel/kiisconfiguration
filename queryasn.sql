select a.acl_read from acls as a join consumers as c on c.consumer_id=a.consumer_id join services as s on s.service_id=a.service_id where c.consumer_username='' and s.service_path_read=''
