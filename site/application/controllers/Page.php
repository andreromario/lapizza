<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index() {
		$this->template->load('layouts/public', 'public/home');
	}

	public function about() {
		$this->template->load('layouts/public', 'public/about');
	}

	public function login() {
		$this->load->helper('form');
		$this->template->load('layouts/public', 'public/login');
	}

	public function howworks() {
		$this->template->load('layouts/public', 'public/howworks');
	}

	public function contactus() {
		$this->load->helper('form');
		$this->template->load('layouts/public', 'public/contactus');
	}

}