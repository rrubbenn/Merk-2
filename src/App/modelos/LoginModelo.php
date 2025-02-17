<?php

    class LoginModelo {
        private $db;

        public function __construct(){
            $this->db = new Base;

        }
            
        public function login($datos){
            $this->db->query("SELECT * FROM usuario
                                WHERE nombre = :nombre
                                AND contrasena = sha2(:contrasena, 256)");

            // $this->db->query("SELECT * FROM usuario
            // WHERE nombre = :nombre
            // AND contrasena = :contrasena");

            $this->db->bind(':nombre',$datos['usuario']);
            $this->db->bind(':contrasena',$datos['contrasena']);

            return $this->db->registro();
        }
        
    
    }