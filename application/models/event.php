<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of event
 *
 * @author Ushan
 */
class event extends my_model {
    
    const DB_TABLE = 'event';
    const DB_TABLE_PK = 'id';
    
    public $id;
    public $name;
    public $location;
    public $date;
    public $starttime;
    public $endtime;
    public $userid;
            
    //add new event 
    function addEvent($array){
        $this->name = $array[0]["name"];
        $this->location = $array[0]["location"];
        $this->date = $array[0]["date"];
        $this->starttime = $array[0]["starttime"];
        $this->endtime = $array[0]["endtime"];
        $this->userid = $array[0]["userid"];
        $this->save();        
    }
    
    function updateEvent(){}
    
    function getAllEvent(){}
    
    function getAllEventByUser($userid){
        $query = $this->db->get_where('event', array('$userid' => $userid),0, 0);
        return $query->result_array();
    }
    
    function getAllEventByDate($date){
        $query = $this->db->get_where('event', array('$date' => $date),0, 0);
        return $query->result_array();
    }
    
   function getUserByEvent($eventid){
        $query = $this->db->get_where('event', array('$id' => $eventid),0, 0);
        return $query->result_array();
   }
}
