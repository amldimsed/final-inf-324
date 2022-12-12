<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class financiero_bd extends CI_MODEL{

    public function __construct(){

        parent::__construct();
    }

	public function flujos()
	{
		//$this->load->helper('html');
		$this->load->database();
		$query = $this->db->query("SELECT * FROM flujo");
		return $query->result();  
	}

}
