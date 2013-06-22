<?php
App::uses('CakeEmail', 'Network/Email');

class PasswordEmail {

	private $emailConfig = 'gmail';
	private $sender = 'do-not-reply@oppoin.com';

	private $from;
	private $to;

	private $email;

	public function __construct($to) {
		$this->from	= array('full_name' => 'ChildLabel', 'email' => $this->sender);
		$this->to	= $to;

		$this->_prepareAddressFields();
	}

	protected function _prepareAddressFields() {
		$fromEmail	= $this->from['email'];
		$fromFullName	= $this->from['full_name'];

		$toEmail	= $this->to['email'];
		$toFullName	= $this->to['full_name'];

		$email = new CakeEmail($this->emailConfig);

		$email->from(array($fromEmail => $fromFullName));
		$email->to(array($toEmail => $toFullName));
		$email->sender($this->sender);
		$email->replyTo($fromEmail, $fromFullName);
		$this->email = $email;
		return $email;
	}

	public function sendNewPassword($newPassword) {
		$email = $this->email;
		$email->subject('[Password Reset] Do NOT reply to this email');

		if (EMAIL_ON) {
			$result = $email->send("This is your new password $newPassword.");
		} else {
			$result = $email;
		}
		return $result;
	}

	public function sendToken($token) {
		$email = $this->email;
		$email->subject('[Password Reset] Do NOT reply to this email');
		$baseURL = Router::url('/users/reset_password?token=' . $token, true);

		if (EMAIL_ON) {
			$result = $email->send("Please click this link to reset your password. $baseURL");
		} else {
			$result = $email;
		}
		return $result;
	}
}