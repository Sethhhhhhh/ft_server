<?php

$cfg['blowfish_secret'] = 'hO:0EldegRf9xxO]Mcs,R,sc,UgejjWF';

$i = 0;
$i++;

/*
* Server #1
*/

$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['host'] = 'localhost';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;

/*
* Directories for saving/loading files from server
*/

$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
