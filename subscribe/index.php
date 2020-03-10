<?php
use infrajs\ans\Ans;
use infrajs\mail\Mail;
use infrajs\template\Template;
use infrajs\path\Path;
use infrajs\user\User;


$ans = [];
$email = Ans::REQ('email');
$is_email = Mail::check($email);
if ($is_email != true) return Ans::err($ans, 'Некорректный адрес электронной почты!');

$terms = Ans::REQ('terms');
if (!$terms) return Ans::err($ans, 'Требуется согласие на обработку персональных данных!');




$data = $_POST;
$data['post'] 	= $_POST;
$data['email'] 	= $email;
$data['host']  	= $_SERVER['HTTP_HOST'];

$mdata = array();
$mdata['email_from'] = $data['email'];
$mdata['subject'] = 'Купон со скидкой для '.$data['email'].' '.$_SERVER['HTTP_HOST'];



$body = Template::parse('-bugagashop/subscribe/mail.tpl', $data);
if (!$body)  return Ans::err($ans,"Неудалось подготовить письмо из-за ошибки на сервере!");

session_start();
if (empty($_SESSION['submit_time'])) $_SESSION['submit_time'] = 0;
if (time() - $_SESSION['submit_time'] < 50) return Ans::err($ans, 'Письмо уже отправлено! Новое сообщение можно будет отправить через 1 минуту!');
$_SESSION['submit_time'] = time();


$maildir = Path::resolve('~auto/.subscribe/');	
if (!is_dir($maildir)) mkdir($maildir);
if ($maildir) {
	$folder = Path::theme($maildir);
	$name = Path::tofs(Path::encode($data['email']));
	$fname = date('Y F j H-i').' '.$name.' '.time();
	@file_put_contents($folder.$fname.'.txt', print_r($body, true)."\n\n\n\n\n".print_r($mdata, true));
}

$r = Mail::html($mdata['subject'], $body, true, $mdata['email_from']);//from to
Mail::html($mdata['subject'], $body, $mdata['email_from'], true);//from to

if (!$r) return Ans::err($ans,"Неудалось отправить письмо из-за ошибки на сервере!");
return Ans::ret($ans,'На почту <b>'.$email.'</b> отправлен купон со скидкой');