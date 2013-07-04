<?php
App::uses('CakeEmail', 'Network/Email');

class EnquiryEmail {

	private $emailConfig = 'gmail';
	private $sender = 'do-not-reply@oppoin.com';

	private $from;
	private $to;

	private $email;

	public function __construct($from) {
		$this->from	= $from;
		$this->to	= array('full_name' => 'Daphne Ling', 'email' => 'daphne@motherinc.org'); 

		$this->_prepareAddressFields();
		$this->_addSenderToCCList();
	}

	public function attach($attachments) {
		$this->email->attachments($attachments);
	}

	protected function _prepareAddressFields() {
		$fromEmail	= $this->from['email'];
		$fromFullName	= $this->from['full_name'];

		$toEmail	= $this->to['email'];
		$toFullName	= $this->to['full_name'];

		$email = new CakeEmail($this->emailConfig);

		$email->from(array($fromEmail => 'On Behalf of ' . $fromFullName));
		$email->to(array($toEmail => $toFullName));
		$email->sender($this->sender);
		$email->replyTo($fromEmail, $fromFullName);
		$this->email = $email;
		return $email;
	}

	public function send($content = '') {
		$email = $this->email;
		$email->subject("You've got an enquiry email");

		if (EMAIL_ON) {
			//this is the content
			$result = $email->send($content);
		} else {
			$result = $email;
		}
		return $result;
	}

/**
 *
 * auto make sure the sender himself is added to the cc list
 *
 * @param $email Pass by reference. Email object. if no email object supplied, we assume $this->email is used.
 * @return void.
 */
	protected function _addSenderToCCList(&$email = null) {
		if ($email == null) {
			$toBeAlteredEmail = $this->email;
		} else {
			$toBeAlteredEmail = $email;
		}
		$fromEmail	= $this->from['email'];
		$fromFullName	= $this->from['full_name'];

		$toBeAlteredEmail->addCc(array($fromEmail => $fromFullName));
		if ($email == null) {
			$this->email = $toBeAlteredEmail;
		} else {
			$email = $toBeAlteredEmail;
		}
	}
}