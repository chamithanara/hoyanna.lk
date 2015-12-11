<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of vacancy
 *
 * @author Ushan
 */
class vacancy extends my_model {
    
    //insert new vacancy
    const DB_TABLE = 'vacancy';
    const DB_TABLE_PK = 'id';
    
    public $id;
    public $name;
    public $description;
    public $typeid;
    public $userid;
    public $date;
            
    function  addVacancy($array){
        $this->name = $array["name"];
        $this->description = $array["description"];
        $this->typeid = $array["typeid"];
        $this->userid = $array["userid"];
        $this->save();
    }
    
    function getAllVacancy(){
         $query = $this->db->query(" SELECT * FROM vacancy
                                    ORDER BY date;
                                    ");
         var_dump($query->result_array());
        return  $query->result_array();
    }
    
    function updateVacancy(){}
    
    //get vacancies accoriding to given userid
    function getVacancyByUser($userid){
        $this->db->select('vacancy.id ,vacancy.name,vacancy.description,vacancy.date,vacancytype.type,user.username');
        //For determine one or more tables to select from 
        $this->db->from('vacancy');
        //For joining with another table, table name as first argument and condition string as second argument
        $this->db->join('vacancytype', 'vacancytype.id = vacancy.typeid');
        $this->db->join('user', 'user.userid = vacancy.userid');
        $this->db->where('vacancy.userid',$userid);
        $query = $this->db->get();
        return $query->result_array();
    }
    
    //get vacancies accoriding to given userid
    function getVacancyById($id){
        $query = $this->db->get_where('vacancy', array('id' => $id),0, 0);
        var_dump($query->result_array());
        return $query->result_array();
    }
    
    //get vacancies according to the given type
    function getVacanciesByType($typeid){
        $query = $this->db->get_where('vacancy', array('typeid' => $typeid),0, 0);
        return $query->result_array();
    }
    
    //get user id according to the given vacancy id
    function getUserByVacancy($vacancyid){
        $query = $this->db->get_where('vacancy', array('id' => $vacancyid),0, 0);
        return $query->result_array();
    }
    
    
}
