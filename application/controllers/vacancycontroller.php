<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of vacancycontroller
 *
 * @author Ushan
 */
class vacancycontroller  extends CI_Controller{
    
    function index(){
        $this->load->model('vacancy');
        $vacancy =  new vacancy();
        $array = $vacancy->getVacancyByUser(1);
        $data["vacancies"] = $array;
        $this->load->view('mainView',$data);
    }

    



    public function addVacancy() {
        $this->load->model('vacancy');
        $vacancy = new vacancy();
        $array = [];
        $array["name"] = "testing";//request name;
        $array["description"] = "test desc"; //request desc
        $array["typeid"] = 1; //request desc
        $array["userid"] = 1; //request desc
        $vacancy->addVacancy($array);
        
    }
    
    function getVacancyTypes(){
        $this->load->model('vacancytype');
        $vacancyType = new vacancytype();
        $vacancyType->getVacancyTypes();
    }
    
    function getAllVacancy(){
        $this->load->model('vacancy');
        $vacancy =  new vacancy();
        $vacancy->getAllVacancy();
    }
    
    function getVacancyByID(){
        $this->load->model('vacancy');
        $vacancy =  new vacancy();
        $vacancy->getVacancyById(1);
    }
    
    function getVacancyByUserID(){
        $this->load->model('vacancy');
        $vacancy =  new vacancy();
        $vacancy->getVacancyByUser(1);
        
    }
    
    function getRequestByUser(){
        
    }
    
    
}
