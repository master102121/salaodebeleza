@extends('layouts.admin')

@section('main-content')
<!-- Page Heading -->
<link rel="stylesheet" href="{{ asset('dist/css/bootstrap-multiselect.css')}}" type="text/css">

<h1 class="h3 mb-4 text-gray-800">{{ $title ?? __('Editar Usuário') }}
<code>
{{-- Config::get('globals.'.$user->categoria) --}}

</code>


</h1>

<!-- Main Content goes here -->
@if (session('success'))
<div class="row p-3 justify-content-center">

    <div class="col-lg-10 order-lg-1 alert alert-success border-left-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</div>
@endif


@if(session()->has('warning'))
<div class="row p-3 justify-content-center">

    <div class="col-lg-10 order-lg-1 alert alert-danger border-left-danger alert-dismissible fade show" role="alert">
        {{ session('warning') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</div>
@endif
<div class="card">
    <div class="card-body">
        <form action="{{ route('profissionais.update', $user->id) }}" method="post" class="row">
            @csrf
            @method('post')

            <div class="form-group col-md-12">
                <label for="name">Nome</label>
                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" id="name" placeholder="Nome" autocomplete="off" value="{{ old('name') ?? $user->name }}">
                @error('name')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>

            <div class="form-group col-md-12">
                <label for="telefone">Telefone</label>
                <input type="text" class="form-control @error('telefone') is-invalid @enderror" name="telefone" id="telefone" placeholder="Telefone" autocomplete="off" value="{{ old('telefone') ?? $user->telefone }}">
                @error('telefone')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>

            <div class="form-group col-md-12">
                <label for="cidade">Cidade</label>
                <input type="text" class="form-control @error('cidade') is-invalid @enderror" name="cidade" id="cidade" placeholder="Cidade" autocomplete="off" value="{{ old('cidade') ?? $user->cidade }}">
                @error('cidade')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>

            <div class="form-group col-md-12">

            <div class="form-group col-md-12">
                <label for="email">Email</label>
                <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" id="email" placeholder="Email" autocomplete="off" value="{{ old('email') ?? $user->email }}">
                @error('email')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>



            <div class="form-group col-md-12 @if($user->isadmin!=1) d-none @endif">
                <label for="comissao">Administrador</label>
                <select class="form-control form-select-lg mb-3" aria-label=".form-select-lg comissao" name="isadmin">
                    <option value="{{$user->isadmin }}">{{$user->isadmin==1?"Sim":"Não" }}</option>
                    <option value="{{$user->isadmin=="0"?"1":"0" }}">{{$user->isadmin=="1"?"Remover admin":"Trazer para admin" }}</option>


                </select>
            </div>





            <div class="form-group col-md-12">
                <label for="area">Área(s) - atuando em:
                    <? $aa=1; ?>
                    @forelse($user->profissao($user->area_id) as $area)
                    <code>(<?=$aa?>)</code><b>{{ $area->nome??"Área não encontrada ou não-facilitador" }} </b><? $aa++; ?>
                    @empty
                    Nenhuma área informada
                    @endforelse



                </label>




                <select class="form-control  mb-2  selectarea area"  aria-label=".form-select-lg area" multiple="multiple" name="area">
                    @forelse(\App\Models\Area::where('status', 1)->get() as $areas))
                    <option value="{{ $areas->id }}">{{ $areas->nome }}</option>
                    @empty
                    <option value="">Nenhuma Área disponível</option>
                    @endforelse
                </select>
            </div>







            <div class="form-group col-md-6">
                <label for="password">Senha (Caso não queira alterar, pode deixar em branco)</label>
                <input type="text" class="form-control @error('password') is-invalid @enderror" name="password" id="password" placeholder="Senha" autocomplete="off" value="">
                @error('password')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>

            <div class="form-group col-md-6">
                <label for="cpassword">Confirmar senha</label>
                <input type="text" class="form-control @error('password') is-invalid @enderror" name="cpassword" id="cpassword" placeholder="Confirmar senha" autocomplete="off" value="">
                @error('cpassword')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <input type="hidden"  name="idhidden"  value="{{$user->id}}">
            <input type="hidden"  name="atua" class="atua" value="">

            <button type="submit" class="btn btn-primary enviar">Salvar alterações</button>
            <a href="{{ route('profissionais.index') }}" class="btn btn-default">Voltar para a lista</a>

        </form>
    </div>
</div>

<!-- End of Main Content -->


<script type="text/javascript" src="{{ asset('docs/js/jquery-2.2.4.min.js')}}"></script>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js" defer></script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.selectarea').select2();
        $(".enviar").click(function(){
if($(".selectarea").val()!=""){


    $(".atua").val($(".selectarea").val());

}


        })
    });
</script>
@endsection

@push('notif')

@if (session('success'))
<div class="alert alert-success border-left-success alert-dismissible fade show" role="alert">
    {{ session('success') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

@if (session('status'))
<div class="alert alert-success border-left-success" role="alert">
    {{ session('status') }}
</div>
@endif
@endpush





