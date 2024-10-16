<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Models\User; 
use App\Models\home;
use Illuminate\Http\Request;

class AdminController extends Controller
{

    public function HomePage()
    {

        $user = Auth::user();
        $id_usuario = $user->id;
            // return $id_usuario;

        $qualidade_cards = home::GetQualidades();
        // return $qualidade;

        $excelencias = [
            'hospitalidade' => 1,
            'prestreza' => 2,
            'inovacao' => 3,
            'seguranca' => 4,
         ];

         $dados = [];
         foreach ($excelencias as $excelencia => $id) {
             $dados[$excelencia] = Home::getAllExcelenciasUsers($id);
         }
            // return $dados;

        $pinusuario = home::pinForUsers($id_usuario);
            $qualidade = array_column($pinusuario, 'QUALIDADE_NOME');
            // return $pinusuario;

        // // PEGANDO AS EXCELENCIAS
        $excelencias_opcoes = home::GetQualidades($qualidade);
            // return $excelencias_opcoes;

        $count_users = home::contagemPinsForUsers($id_usuario);
        // return $count_users;

        //USUÁRIOS DA CAIXA DE SELECT
        $users = home::GetAllUsers();

        $justificativas_opcoes = home::GetJustificativas();

        // ARMAZENANDO EM APENAS 1 VARIAVEL PARA SER ENCAMINHADA PARA O VIEW
        $data = [
            "users" => $users,
            "pinusuarios" => $pinusuario,
            "countpin_cards" => $count_users,
            "qualidades_cards" => $qualidade_cards,
            "excelencias_opcoes" => $excelencias_opcoes,
            'excelencias' => $excelencias_opcoes,
        ];

        return view('minhasestatisticas', $data);
        // return $users;
    }
    public function RHPage()
    {
        // // PEGANDO AS EXCELENCIAS
        $excelencias_opcoes = home::GetQualidades();

        //USUÁRIOS DA CAIXA DE SELECT
        $users = home::GetAllUsers();

        // VALORES NÚMERICOS DAS EXCELENCIAS DENTRO DO BANCO, EM QUE SÃO OS SEUS ID'S EM "QUALIDADES"
        $hospitalidade = 1;
        $prestreza = 2;
        $inovacao = 3;
        $seguranca = 4;

        // COLOCANDO OS VALORES EM CADA TIPO DE EXCELENCIA PARA ELE ME  TRAZER O TOP 3 DE CADA UMA
        $hospitalidade_rank = home::getAllExcelenciasUsers($hospitalidade);
        $prestreza_rank = home::getAllExcelenciasUsers($prestreza);
        $inovacao_rank = home::getAllExcelenciasUsers($inovacao);
        $seguranca_rank = home::getAllExcelenciasUsers($seguranca);

        $count_pins = home::countPinsforUsers();


        // ARMAZENANDO EM APENAS 1 VARIAVEL PARA SER ENCAMINHADA PARA O VIEW
        $data = [
            "users" => $users,
            "count" => $count_pins,
            "excelencias_opcoes" => $excelencias_opcoes,
            "hospitalidade_rank" => $hospitalidade_rank,
            "prestreza_rank" => $prestreza_rank,
            "inovacao_rank" => $inovacao_rank,
            "seguranca_rank" => $seguranca_rank,

            //Informações dos cards da caixa de excelencia para renderizar sem precisar repetir 4 vezes na home
            'excelencias' => $excelencias_opcoes,
        ];

        return view('estatisticas-rh', $data);
        // return $users;
    }

    public function aprovarUser()
    {
        // Filtra os usuários que não são administradores
        $users = User::where('is_admin', false)
        ->select('id', 'name', 'email', 'matricula', 'status') // Especifique as colunas que você quer
        ->paginate(20);

        // $statususer = arrat
        // return $users;
    
        $usuarios = home::GetAllUsers();
        // return $usuarios;
        // $status = array_column(array: $usuarios, 'status', 'name');
 
        
        $aprovados = [];
        $nao_aprovados = [];
        
        foreach ($users as $usuario) {
            if ($usuario['status'] == 1) {
                $aprovados[] = $usuario;
            } else {
                $nao_aprovados[] = $usuario;
            }
        }
        
        // return $nao_aprovados;
        
        $data = [
            'paginate'=> $users,
            'naoaprovados' => $nao_aprovados,
        ];

        // return $data;
        return view('aprovacaorh' , $data);

    }
   

    
    public function getMouth()
    {


    }
 
    public function getTablePins()
    {



    }
}
