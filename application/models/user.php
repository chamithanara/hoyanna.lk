<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of user
 *
 * @author Ushan
 */
class user extends my_model {
    
    const DB_TABLE = 'user';
    const DB_TABLE_PK = 'userid';
    
    public $userid;
    public $firstname;
    public $lastname;
    public $emailaddress;
    public $nic;
    public $mobilenumber;
    public $password;
    public $username;

    //put your code here
    function addUser($array){
        $this->firstname = $array[0]["firstname"];
        $this->lastname = $array[0]["lastname"];        
        $this->emailaddress = $array[0]["emailaddress"];
        $this->nic = $array[0]["nic"];
        $this->mobilenumber = $array[0]["mobilenumber"];
        $this->password = $array[0]["password"];
        $this->username = $array[0]["username"];
        $this->save();
        
        
    }
    
    function searchUserByUsename($username){
        $query = $this->db->get_where('user', array('$' => $date),0, 0);
        return $query->result_array();
    }
    
    function login($username,$password){
        
    }
    
    
}
