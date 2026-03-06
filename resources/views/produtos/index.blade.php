@extends('layouts.admin')

@section('main-content')
<div class="container-fluid">
    
    <x-page-header 
        title="Estoque de Produtos" 
        :buttonLink="route('produtos.create')" 
        buttonText="Novo Produto" 
    />

    <x-card>
        <div class="table-responsive">
            <table class="table table-hover align-items-center" id="sampleTable">
                <thead class="thead-light">
                    <tr>
                        <th class="border-0">#</th>
                        <th class="border-0">Produto</th>
                        <th class="border-0 text-center">Preço</th>
                        <th class="border-0 text-center">Promoção</th>
                        <th class="border-0 text-center">Status</th>
                        <th class="border-0 text-right">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($produtos as $produto)
                    <tr>
                        <td class="align-middle">{{ $produto->id }}</td>
                        <td class="align-middle">
                            <div class="d-flex align-items-center">
                                <img src="{{ $produto->imgurl ?? asset('img/no-image.png') }}" 
                                     class="rounded shadow-sm mr-3" style="width: 45px; height: 45px; object-fit: cover;">
                                <div>
                                    <span class="font-weight-bold text-dark d-block">{{ $produto->name }}</span>
                                    <small class="text-muted">{{ $produto->categoria->alias_name ?? 'Geral' }}</small>
                                </div>
                            </div>
                        </td>
                        <td class="text-center align-middle font-weight-bold text-dark">
                            R$ {{ number_format((float)$produto->unitprice, 2, ',', '.') }}
                        </td>
                        <td class="text-center align-middle">
                            @if($produto->promotional == 1)
                                <span class="badge badge-pill badge-warning px-3">Sim</span>
                            @else
                                <span class="badge badge-pill badge-light text-muted px-3 border">Não</span>
                            @endif
                        </td>
                        <td class="text-center align-middle">
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input chkstatus" 
                                       id="status_{{ $produto->id }}" data-id="{{ $produto->id }}"
                                       {{ $produto->status == 1 ? 'checked' : '' }}>
                                <label class="custom-control-label" for="status_{{ $produto->id }}"></label>
                            </div>
                        </td>
                        <td class="text-right align-middle">
                            <div class="btn-group shadow-sm">
                                <a href="{{ route('produtos.edit', $produto->id) }}" class="btn btn-white btn-sm text-primary border" title="Editar">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <button class="btn btn-white btn-sm text-danger border" onclick="deleteTag({{ $produto->id }})" title="Excluir">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                            <form id="delete-form-{{$produto->id}}" action="{{ route('produtos.destroy', $produto->id) }}" method="POST" class="d-none">
                                @csrf @method('DELETE')
                            </form>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="6" class="text-center py-4">Nenhum produto encontrado.</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </x-card>
</div>
@endsection