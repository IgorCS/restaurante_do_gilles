<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Guiche extends CI_Controller {
	function __construct(){
        parent::__construct();
        $this->load->helper('url');
    }

	
// Carrega o PDV
	public function index(){	
	
		$this->load->model('crud_model');

		$data = array();
		
		$data['numeros'] = $this->crud_model->listar('guiche ORDER BY id');
		
		$data['config'] = $this->crud_model->listar('config');
		
		$this->load->view('guiche/index', $data);
	}
	
}

?>