<?php
class Url{
    public function run(){
      $controller =$this->getController();
      $method = $this->getMethod();
      $parameter = $this->getParameter();
      include "../app/controllers/".$controller.".php";
      $controller = new $controller();
      return call_user_func([$controller,$method],$parameter);
    }
    public function getUrl(){
      $url = explode("/",rtrim($_GET["page"],"/"));
      $url = (empty($url[0])) ? ["home"] : $url;
      return $url;
    }
    public function getController(){
      $controller =$this->getUrl();
      $controller = $controller[0];
      $controller = ucfirst($controller);
      $controller .= "Controller";
      return $controller; 
    } 
    public function getMethod(){
      $method = $this->getUrl();  
      if(count($method) === 3){
        $method = $method[2];
      }elseif(count($method) === 2){
        $method = $method[1];
      }elseif(count($method) === 1){
        $method = "index";
      }
      return $method;
    }
    public function getParameter(){
      $parameter = $this->getUrl();
      $parameter = (count($parameter) === 3) ? $parameter[1] :null;
      return $parameter;
    }
}
?>