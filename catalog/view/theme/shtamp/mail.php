<?php 

/* Вывод ошибок

error_reporting(-1);
$conf['error_level'] = 2;
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);

*/

$_root = getenv("DOCUMENT_ROOT");

use PHPMailer\PHPMailer\PHPMailer; 
use PHPMailer\PHPMailer\Exception;

require "$_root/catalog/view/theme/shtamp/phpmailer/src/Exception.php";
require "$_root/catalog/view/theme/shtamp/phpmailer/src/PHPMailer.php";
require "$_root/catalog/view/theme/shtamp/phpmailer/src/SMTP.php";

@$project_name = trim($_POST["project_name"]);
@$admin_email  = trim($_POST["admin_email"]);
@$form_subject = trim($_POST["form_subject"]);

@$_name = $_POST['name'];
@$_phone = $_POST['phone'];
@$_text = $_POST['message'];

// $message = "
// <table style='width: 100%;'>
//     <tr style='background-color:#f8f8f8'>
//         <td style='padding: 10px; border: #e9e9e9 1px solid;'><b>Имя</b></td>
//         <td style='padding: 10px; border: #e9e9e9 1px solid;'>$_name</td>
//     </tr>
//     <tr>
//         <td style='padding: 10px; border: #e9e9e9 1px solid;'><b>Телефон</b></td>
//         <td style='padding: 10px; border: #e9e9e9 1px solid;'>$_phone</td>
//     </tr>
//     <tr style='background-color:#f8f8f8'>
//         <td style='padding: 10px; border: #e9e9e9 1px solid;'><b>Сообщение</b></td>
//         <td style='padding: 10px; border: #e9e9e9 1px solid;'>$_text</td>
//     </tr>
// </table>
// ";

foreach ( $_POST as $key => $value ) {
        if ( $value != "" && $key != "project_name" && $key != "admin_email" && $key != "form_subject" ) {
            $message .= "
            " . ( ($c = !$c) ? '<tr>':'<tr style="background-color: #f8f8f8;">' ) . "
                <td style='padding: 10px; border: #e9e9e9 1px solid;'><b>$key</b></td>
                <td style='padding: 10px; border: #e9e9e9 1px solid;'>$value</td>
            </tr>
            ";
        }
    }
$message = "<table style='width: 100%;'>$message</table>";

$mail = new PHPMailer(true);

try {
	$mail->CharSet = "UTF-8";
    $mail->SMTPDebug = 0;
    $mail->isSMTP();
    $mail->Host = 'smtp.yandex.com'; /* SMTP-сервер */
    $mail->SMTPAuth = true;
    $mail->Username = 'stendy54@pgmatica.ru'; /* Ящик отправителя */
    $mail->Password = '2J2q9E9c'; /* Пароль ящика */
    $mail->SMTPSecure = 'tls';
    $mail->Port = 587;

    $mail->setFrom('stendy54@pgmatica.ru', 'mir-stamp.ru'); /* Ящик и имя отправителя */
    $mail->addAddress($admin_email);

    $mail->isHTML(true);
    $mail->Subject = "$project_name. $form_subject";
    $mail->Body    = "$message";
	if($_name != "" && $_phone!= "" && $_text != "" ) {
    $mail->send();
    //echo 'Сообщение отправлено';
	}	
} 

catch (Exception $e) {
    echo 'Сообщение не было отправлено. Ошибка: ', $mail->ErrorInfo;
}