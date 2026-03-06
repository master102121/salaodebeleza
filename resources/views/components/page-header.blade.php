@props(['title', 'buttonLink' => null, 'buttonText' => null, 'buttonIcon' => 'plus'])

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
    @if($buttonLink)
        <a href="{{ $buttonLink }}" class="btn btn-primary btn-sm shadow-sm">
            <i class="fas fa-{{ $buttonIcon }} fa-sm text-white-50"></i> {{ $buttonText }}
        </a>
    @endif
</div>