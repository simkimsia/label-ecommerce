<?php
App::uses('CakeEmail', 'Network/Email');

class PasswordEmail {

	private $emailConfig = 'gmail';
	private $sender = 'sales@childlabel.com';
	private $childlabel = 'sales@childlabel.com';

	private $from;
	private $to;

	private $email;
	private $admin = false;

	public function __construct($to, $admin=false) {
		$this->from	= array('full_name' => 'ChildLabel', 'email' => $this->childlabel);
		$this->to	= $to;
		$this->admin = $admin;

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
		if ($this->admin) {
			$prefix = '/admin';
		} else {
			$prefix = '';
		}
		$baseURL = Router::url($prefix . '/users/reset_password?token=' . $token, true);

		if (EMAIL_ON) {
			$result = $email->send("Please click this link to reset your password. $baseURL");
		} else {
			$result = $email;
		}
		return $result;
	}
}