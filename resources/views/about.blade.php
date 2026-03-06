@extends('layouts.admin')

@section('main-content')
    <!-- Page Heading -->
    <h1 class="h5 mb-4 text-gray-800">{{ __('Sobre (Sistema WEB e APP)') }}</h1>

    <div class="row justify-content-center">

        <div class="col-lg-8">

            <div class="card shadow mb-4">

                <div class="card-profile-image mt-4">
                    <img src="{{ asset('img/favicon.png') }}" class="rounded-circle" alt="user-image">
                </div>

                <div class="card-body">

                    <div class="row">
                        <div class="col-lg-12 mb-1">
                            <div class="text-center">
                                <h5 class="font-weight-bold">Sistema Colih</h5>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-1 text-center">
                            <a href="#" target="_blank" class="btn btn-success btn-circle btn-lg"><i class="fab fa-android fa-fw"></i></a>
                        </div>
                        <div class="col-md-4 mb-1 text-center">
                            <a href="#" target="_blank" class="btn btn-github btn-circle btn-lg"><i class="fab fa-github fa-fw"></i></a>
                        </div>
                        <div class="col-md-4 mb-1 text-center">
                            <a href="#" target="_blank" class="btn btn-danger btn-circle btn-lg"><i class="fab fa-google-drive fa-fw"></i></a>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-lg-12">
                            <h6 class="font-weight-bold">Framework Base (Laravel 8)</h6>
                            <p>Framework CSS (SB Admin 2)</p>
                            <p>Recomendável sempre manter a última versão para usufruir das novas funcionalidades</p>
                            <hr>
                            <a href="#" target="_blank" class="btn btn-github">
                                <i class="fab fa-github fa-fw"></i> Repositório Github
                            </a>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-lg-12">
                            <h5 class="font-weight-bold">Creditos</h5>
                            <p>Laravel SB Admin 2 usa open-source e third-party libraries/packages, agradecimentos à comunidae Web de desenvolvimento.</p>
                            <ul>
                                <li><a href="https://laravel.com" target="_blank">Laravel</a> - Open source framework.</li>
                                <li><a href="https://github.com/DevMarketer/LaravelEasyNav" target="_blank">LaravelEasyNav</a> - Making managing navigation in Laravel easy.</li>
                                <li><a href="https://startbootstrap.com/themes/sb-admin-2" target="_blank">SB Admin 2</a> - Thanks to Start Bootstrap.</li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>

@endsection
