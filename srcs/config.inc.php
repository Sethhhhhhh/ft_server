<?php

$i = 0;
$i++;

/*
* Server #1
*/

$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['host'] = 'localhost';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = false;

/*
* Directories for saving/loading files from server
*/

$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
