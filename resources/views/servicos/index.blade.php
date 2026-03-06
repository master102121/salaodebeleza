@extends('layouts.admin')

@section('main-content')
<div class="container-fluid">
    
    <x-page-header 
        title="Gestão de Serviços" 
        :buttonLink="route('servicos.create')" 
        buttonText="Novo Serviço" 
    />

    <x-card>
        <div class="text-center mb-4">
            <img src="{{ asset('img/favicon.png') }}" class="rounded-circle shadow-sm" style="width: 60px;">
        </div>

        <div class="table-responsive">
            <table class="table table-hover align-items-center" id="sampleTable">
                <thead class="thead-light">
                    <tr>
                        <th class="border-0">#</th>
                        <th class="border-0">Serviço</th>
                        <th class="border-0 text-center">Valor Padrão</th>
                        <th class="border-0 text-center">Status</th>
                        <th class="border-0 text-center">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($servicos as $servico)
                    <tr>
                        <td>{{ $servico->id }}</td>
                        <td>
                            <span class="font-weight-bold text-dark">{{ $servico->name }}</span>
                            <br><small class="text-muted">Atualizado em: {{ $servico->updated_at->format('d/m/Y') }}</small>
                        </td>
                      <td class="text-center font-weight-bold text-success">
    {{-- O (float) garante que a string do MySQL vire um número real --}}
    R$ {{ number_format((float)$servico->std_price, 2, ',', '.') }}
</td>
                        <td class="text-center">
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input chkstatus" 
                                       id="status_{{ $servico->id }}" data-id="{{ $servico->id }}"
                                       {{ $servico->liberado ? 'checked' : '' }}>
                                <label class="custom-control-label" for="status_{{ $servico->id }}"></label>
                            </div>
                        </td>
                        <td class="text-center">
                            <div class="btn-group">
                                <a href="{{ route('servicos.edit', $servico->id) }}" class="btn btn-sm btn-outline-primary" title="Editar">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <button class="btn btn-sm btn-outline-danger" onclick="deleteService({{ $servico->id }})" title="Excluir">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                            <form id="delete-form-{{$servico->id}}" action="{{ route('servicos.destroy', $servico->id) }}" method="POST" class="d-none">
                                @csrf @method('DELETE')
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </x-card>
</div>
@endsection

@push('js')
<script>
    function deleteService(id) {
        Swal.fire({
            title: 'Excluir Serviço?',
            text: "Os agendamentos vinculados podem ser afetados!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#4e73df',
            confirmButtonText: 'Sim, excluir!',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) document.getElementById('delete-form-' + id).submit();
        });
    }
</script>
@endpush