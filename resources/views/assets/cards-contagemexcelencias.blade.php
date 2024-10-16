{{-- EXPLICANDO MELHOR
        $categoria -> Chaves dos arrays
        $usuarios -> Valores armazenados em $categorias
--}}

{{--

  $CATEGORIAS
  "hospitalidade": [

  $USUARIOS
    {
      "USUARIO": "Equipe TI",
      "ID_QUALIDADE": 1,
      "count_valor": 5,
      "posicoes": 1
    },

--}}
@foreach ($dados as $categoria => $usuarios)
    <div class="card mb-3" style="max-width: 450px; padding: 15px; margin: 15px; box-shadow: 5px 5px #C0C0C0">
        <div class="row g-0">
            <div class="col-md-4 text-center">
                <img src="images/{{ ucfirst($categoria) }}.png" style="width: 140px" alt="{{ ucfirst($categoria) }}">
                <div style="font-weight: 700;" class="mt-3 mb-2">{{ $usuarios[0]->DESCRICAO }}</div>
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        {{-- AQUI ESTAMOS SEPARANDO O VALOR DE $USUARIOS (VALORES DO BANCO) NAS COLUNAS PARA CADA DADO NECESSÁRIO DENTRO DA CONSULTA DA MODEL --}}
                        @foreach ($usuarios as $user)
                            <li class="list-group-item" style="font-weight: normal;">
                                <span class="badge rounded-pill text-bg-success">{{ $user->posicoes }}°</span>
                                {{ $user->NOME_ATRIBUIDO }}: <span
                                    class="badge text-bg-secondary">{{ $user->count_valor }} pins</span>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endforeach
