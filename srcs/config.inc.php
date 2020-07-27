<?php

$cfg['blowfish_secret'] = 'uB;XUoFT:Phn:0lBFW4zn4iVIS[ckV}z';

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
