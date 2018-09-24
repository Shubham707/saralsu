<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*
| -------------------------------------------------------------------
|  Google API Configuration
| -------------------------------------------------------------------
|  client_id         string   Your Google API Client ID.
|  client_secret     string   Your Google API Client secret.
|  redirect_uri      string   URL to redirect back to after login.
|  application_name  string   Your Google application name.
|  api_key           string   Developer key.
|  scopes            string   Specify scopes
*/
$config['google']['client_id']        = '480061210784-vtikld7btq04f8r9v9aecjtkp00juq66.apps.googleusercontent.com';
$config['google']['client_secret']    = 'zO16KGEckQn828lIO6FzFCXp';
$config['google']['redirect_uri']     = base_url().'user_authentication/';
$config['google']['application_name'] = '';
$config['google']['api_key']          = '';
$config['google']['scopes']           = array();