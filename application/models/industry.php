<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of industry
 *
 * @author Ushan
 */
class industry extends my_model {
    const DB_TABLE = 'industry';
    const DB_TABLE_PK = 'id';
    //put your code here
    public $id;
    public $name;
    
    function addIndustry($name){
      $this->name = $name;
      $this->save();
    }
    
    function getInducstryByName($name){
        $query = $this->db->get_where('industry', array('name' => $name),0, 0);
        return $query->result_array();
    }
    
}
