<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of requestcontroller
 *
 * @author Ushan
 */
class requestcontroller extends my_controller {
    //put your code here
    function getRequestByVacancyId(){
        $this->load->model('request');
        $request = new request();
        $request->getAllRequestByVacancy(1);
    }
    
    
    
}
