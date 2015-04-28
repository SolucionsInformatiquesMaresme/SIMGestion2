<?php
error_reporting(~E_ALL);

/*
Mostra la paleta de color.
*/



function validarEmail($mail){ 
  if (!ereg("^([a-zA-Z0-9._/\]+)@([a-zA-Z0-9.-]+).([a-zA-Z]{2,4})$",$mail)){ 
      return FALSE; 
  } else { 
       return TRUE; 
  } 
}

?>