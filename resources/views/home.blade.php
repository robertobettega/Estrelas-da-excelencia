<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Estrelas da excelência</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css\custom\style.css') }}">
</head>

<body>
    <nav class="navbar">
        <div class="container-fluid">
            <div>
                <img src="http://10.1.2.110:80/centralservicos/resources/img/central-servicos.png"
                    alt="Hospital Rio Grande" style="width: 160px">
            </div>
            <div>
                <img src="imagens/Logo estrelas da excelencia.png" alt="Estrelas da Excelência" style="width: 160px">
            </div>
            <div class="dropdown">
                <button class="entrar-navbar" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Roberto Bettega <i class="bi bi-person-fill"></i>
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="Cadastro">Meus dados</a></li>
                    <li><a class="dropdown-item" href="#">Ouvidoria</a></li>
                    <li><a class="dropdown-item" href="#">Ajuda</a></li>
                    <li><a class="dropdown-item" href="login">Sair</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid text-center">
        <h5>Dedique um pin para um colaborador!</h5>
        <img src="{{ asset('images/Divisória Degradê (5).png') }}" alt="">
    </div>

    <div class="container-fluid text-center justify-content-center" style="display: flex; margin: 15px">

        <div>
            <img src="imagens/Hospitalidade.png" style="width: 160px; margin: 15px" alt="Hospitalidade"
                data-bs-toggle="modal" data-bs-target="#AvaliacaoModal">
            <div>Hospitalidade</div>
        </div>
        <div>
            <img src="imagens/Prestreza.png" style="width: 160px; margin: 15px" alt="Prestreza" data-bs-toggle="modal"
                data-bs-target="#AvaliacaoModal">
            <div>Prestreza</div>
        </div>
        <div>
            <img src="imagens/Inovação.png" style="width: 160px; margin: 15px" alt="Inovação" data-bs-toggle="modal"
                data-bs-target="#AvaliacaoModal">
            <div>Inovação</div>
        </div>
        <div>
            <img src="imagens/Segurança.png" style="width: 160px; margin: 15px" alt="Segurança" data-bs-toggle="modal"
                data-bs-target="#AvaliacaoModal">
            <div>Segurança</div>
        </div>
    </div>

    <div class="modal fade" id="AvaliacaoModal" tabindex="-1" aria-labelledby="AvaliacaoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <img class="logo img-fluid" src="{{ asset('images/Logo Hospital Rio Grande.png') }}"
                        style="width: 30px" alt="Logo">
                    <h1 class="modal-title fs-5" id="exampleModalLabel"> Dedicar pin!</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    {{-- CAIXA DE OPÇÕES CRIADA COM BOOTSTRAP PARA FAZER INPUT DE TESTE PARA O BANCO DE DADOS --}}
                    <div class="row">
                        <label>Usuário:</label>
                        <div class="col-8 pt-8">
                            {{-- CAIXA DE OPÇÕES QUE PEGA OS USUÁRIOS DO BANCO --}}
                            <select class="col form-select" aria-label="Selecione o Usuário">
                                <option selected> Adicione o usuário</option>
                                @foreach ($users as $usuarios)
                                    <option>
                                        {{ $usuarios->nome }} {{ $usuarios->sobrenome }} {{ $usuarios->matricula }}
                                        ({{ $usuarios->id }})
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <label>Excelencia:</label>
                        <div class="col-8 pt-8">
                            {{-- CAIXA DE OPÇÕES QUE PEGA AS EXCELÊNCIAS --}}
                            <select class="col form-select" aria-label="Selecione o Usuário">
                                <option selected>Selecione a excelencia</option>
                                @foreach ($excelencias_opcoes as $opcoes)
                                    <option value="{{ $opcoes->id }}">
                                        {{ $opcoes->DESCRICAO }}
                                        ID:({{ $opcoes->id }})
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <label>Estrelas</label>
                        <div class="rate">
                            <input type="radio" id="star5" name="rate" value="5" />
                            <label for="star5" title="text">1 stars</label>
                            <input type="radio" id="star4" name="rate" value="4" />
                            <label for="star4" title="text">2 stars</label>
                            <input type="radio" id="star3" name="rate" value="3" />
                            <label for="star3" title="text">3 stars</label>
                            <input type="radio" id="star2" name="rate" value="2" />
                            <label for="star2" title="text">4 stars</label>
                            <input type="radio" id="star1" name="rate" value="1" />
                            <label for="star1" title="text">5 star</label>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancelar</button>
                    <button type="button" class="entrar-navbar"><b>SALVAR<b></button>
                </div>
            </div>
        </div>
    </div>

    {{-- OS CARDS ESTÃO USANDO O 'FOREACH' PARA PUXAR OS TOP 3 DE CADA EXCELENCIA, CUIDADO AO ALTERAR O FRONT-END --}}
    <div class="card" style="margin: 15px; padding: 15px">

        <div class="text-center">
            <h4><i class="bi bi-star-fill"></i> Estrelas da excelência</h4>
            <?php
            $hoje = date('d/m/Y');
            ?>
            <h5> Destaques <?php echo $hoje ?></h5>
        </div>

        <div class="container-fluid row justify-content-center">

            <div class="card mb-3" style="max-width: 450px; padding: 15px; margin: 15px">
                <div class="row g-0">
                    <div class="col-md-4 text-center">
                        <img src="imagens/Hospitalidade.png" style="width: 140px" alt="Hospitalidade">
                        <div>Hospitalidade</div>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">

                                @foreach ($hospitalidade_rank as $user)
                                    <li class="list-group-item">
                                        <b>{{ $user->USUARIO }}</b>
                                        ({{ $user->count_valor }})
                                        <span class="badge rounded-pill text-bg-success">{{ $user->posicoes }}°</span>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="card mb-3" style="max-width: 450px; padding: 15px; margin: 15px">
                <div class="row g-0">
                    <div class="col-md-4 text-center">
                        <img src="imagens/Prestreza.png" style="width: 140px" alt="Prestreza">
                        <div>Prestreza</div>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                @foreach ($prestreza_rank as $user)
                                    <li class="list-group-item">
                                        <b>{{ $user->USUARIO }}</b>
                                        ({{ $user->count_valor }})
                                        <span class="badge rounded-pill text-bg-success">{{ $user->posicoes }}°</span>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card mb-3" style="max-width: 450px; padding: 15px; margin: 15px">
                <div class="row g-0">
                    <div class="col-md-4 text-center">
                        <img src="imagens/Inovação.png" style="width: 140px" alt="Inovação">
                        <div>Inovação</div>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                @foreach ($inovacao_rank as $user)
                                    <li class="list-group-item">
                                        <b>{{ $user->USUARIO }}</b>
                                        ({{ $user->count_valor }})
                                        <span class="badge rounded-pill text-bg-success">{{ $user->posicoes }}°</span>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card mb-3" style="max-width: 450px; padding: 15px; margin: 15px">
                <div class="row g-0">
                    <div class="col-md-4 text-center">
                        <img src="imagens/Segurança.png" style="width: 140px" alt="Segurança">
                        <div>Segurança</div>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">

                                @foreach ($seguranca_rank as $user)
                                    <li class="list-group-item">
                                        <b>{{ $user->USUARIO }}</b>
                                        ({{ $user->count_valor }})
                                        <span class="badge rounded-pill text-bg-success">{{ $user->posicoes }}°</span>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js"></script>
    <script src="{{ asset('js\custom\custom.js') }}"></script>
</body>

</html>
