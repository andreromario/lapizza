<?php 

class Billings_model extends CI_Model {

	public function __construct() {
        parent::__construct();
    }

    function insert($data) {
    	$this->db->insert('billings', $data);

    	if($this->db->affected_rows() > 0) {
    		return true;
    	} else {
			return false;
		}
    }

    function get($id) {
        $this->db->select('id, name');
        $this->db->from('billings');
        $this->db->where('id', $id);

        $query = $this->db->get();

        if($query->num_rows() > 0) {
            return $query->row();
        } else {
            return false;
        }
    }

    function update($data) {
        $this->db->where('id', $data['id']);
        $this->db->set('name', $data['name']);
        $query = $this->db->update('billings', $data);

        if($query) {
            return true;
        } else {
            return false;
        }
    }

    function delete($id) {
        $this->db->where('id', $id);
        $query = $this->db->delete('billings'); 

        if($query) {
            return true;
        } else {
            return false;
        }
    }

    function getAll() {
    	$query = $this->db->get('billings');
        return $query->result_array();
    }

}