<?php
class Connect
{
public $config = array(
         "host" => "127.0.0.1", // хост базы данных сервера
         "user" => "root", // пользователь базы данных сервера
         "pass" => "", // пароль от пользователя базы данных сервера
         "port" => "3306", // порт для подключения сервера
	       "secret" => "6LdLeUIUAAAAAKCkXylNnc39CpuPVishc8kztCjm",
         "public" => "6LdLeUIUAAAAABueI_rAuhYNtO18rbJAkxS8gIpC",
         "base" => array(
              "db" => "zakaz5",
          ),
         "pay" => array(
                "secret_word" => "tz1l9pb9",//Секретное слово с сайта фрикасса
                "secret_word2" => "es8gds4i", //Секретное слово2 с сайта фрикасса
                "merchant_id" => "38063",//id магазина с сайта фрикасса
                "dp_ch" => "1"//колличество рублей за dp
          ),
         "smtp" => array(
              "username" => "robot@iti.wtf",
              "port" => "2525",
              "host" => "smtp.beget.com",
              "password" => "s5Y7DJT&",
              "debug" => "false",
              "charset" => "utf-8",
              "from" => "ITI.WTF Bot"
          )
      );

function __construct()
  {
    $this->db = new mysqli($this->config['host'], $this->config['user'], $this->config['pass'], $this->config['base']['db'],$this->config['port']);
    if ($this->db->connect_error) {
        die('Error connect base.');
    }
    date_default_timezone_set('Europe/Moscow');
    $this->db->set_charset("utf8");    
  }
  function __destruct()
  {
    $this->db = null;
  }
public function Change_database($name)
  {
   $this->db->select_db($name);
  }
}