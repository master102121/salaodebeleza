{{-- resources/views/components/card.blade.php --}}
@props(['title' => null]) {{-- Esta linha é obrigatória --}}

<div class="card shadow mb-4 border-0">
    @if($title)
    <div class="card-header py-3 bg-white border-0">
        <h6 class="m-0 font-weight-bold text-primary">{{ $title }}</h6>
    </div>
    @endif
    <div class="card-body">
        {{ $slot }}
    </div>
</div>