<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class home extends CI_Controller {

	public function index()
	{
		//$this->load->helper('html');
		
		$this->load->view('inicio_secion');
	}

	public function LinkDatos()
	{
		
		$this->load->view('./vista_procesos/datos_entrada');
	}

	public function LinkListar()
	{
		
		$this->load->view('./vista_procesos/listar_datos');
	}

	public function Link_IF1()
	{
		
		$this->load->view('./vista_procesos/interrogante1');
	}

	public function Link_IF2()
	{
		
		$this->load->view('./vista_procesos/interrogante2');
	}

	public function Link_IF3()
	{
		
		$this->load->view('./vista_procesos/interrogante3');
	}

	public function seguim_Link_IF1_no()
	{
		
		$this->load->view('./vista_procesos/por_if1_no_seguimiento');
	}
	public function doc_Link_IF1_si()
	{
		
		$this->load->view('./vista_procesos/mostrar_documentos');
	}

	public function LinkCreditos()
	{
		
		$this->load->view('./vista_procesos/estudio_credito');
	}

	public function informe_Link_IF3_no()
	{
		
		$this->load->view('./vista_procesos/por_if3_no_informe_res');
	}

	public function desembolso_Link_IF3_si()
	{
		
		$this->load->view('./vista_procesos/por_if3_si_desembolzar');
	}

	public function presentacion_procesos()
	{
		$this->load->model("financiero_BD");
		$filas=$this->financiero_BD->flujos();
		$datos["filas"]=$filas;
		
		$this->load->view('./vista_procesos/procesos',$datos);
	}

}
