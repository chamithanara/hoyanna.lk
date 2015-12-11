<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of vacancytype
 *
 * @author Ushan
 */
class vacancytype extends my_model {
    
    const DB_TABLE = 'vacancytype';
    const DB_TABLE_PK = 'id';
    
    function addVacancyType($typename){
       
    }
    
    public function getVacancyTypes(){
        $retunVal = $this->get();
        var_dump($retunVal);
    }
}
