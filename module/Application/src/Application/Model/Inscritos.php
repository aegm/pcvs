<?php

namespace Application\Model;
use Zend\Db\Sql\Select;

use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Adapter\Adapter;

class Inscritos extends AbstractTableGateway{
    protected  $table = 'inscritos';
    public function __construct(Adapter $adapter)
    {
        $this->adapter = $adapter;
    }

    public function save($form){
        $data = array(
            'fecha_registro' => date('Y-m-d'),
            'num_doc'  => $form['documento'],
            'tipo_doc'  => $form['tipo_documento'],
            'fec_nac'  => $form['fecha_nacimiento'],
            'nombres'  => $form['nombre'],
            'apellido_paterno'  => $form['apellido_paterno'],
            'apellido_materno'  => $form['apellido_materno'],
            'sexo'  => $form['sexo'],
            'email'  => $form['email'],
            'direccion'  => $form['direccion'],
            'telefono'  => $form['telefono'],
            'celular'  => $form['celular'],
            'prov_celular'  => $form['prov_celular'],
            'telefono_otro'  => $form['telefono_otro'],
            'int_tipo'  => $form['int_tipo'],
            'ubigeo'  => $form['ubigeo']
            
        );
        $this->insert($data);
    }
    
    public function get(){
        $data = $this->select()->toArray();
        return $data;
    }

    public function verifica_registro($dni){
        /*$resultSet = $this->select(array('num_doc' => $dni));
        if (0 === $resultSet->count()) {
            return;
        }
        $row = $resultSet->current();
        return $row;*/
        
     $select = new Select();
     $select->from($this->table);
     
     $resultSet = $this->selectWith($select);
     $resultSet->buffer();
     return $resultSet;
        
    }
    
}
