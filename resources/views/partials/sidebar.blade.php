<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <a class="sidebar-brand d-flex align-items-center justify-content-center my-3" href="{{ route('home') }}">
        <div class="sidebar-brand-icon">
            <img src="{{ asset('/img/logopainel.png') }}" class="img-fluid" style="max-width: 50px; filter: brightness(0) invert(1);"/>
        </div>
        <div class="sidebar-brand-text mx-3">Gerente Beleza</div>
    </a>

    <hr class="sidebar-divider my-0">

    <li class="nav-item {{ request()->routeIs('home') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('home') }}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>{{ __('Dashboard') }}</span>
        </a>
    </li>

    <hr class="sidebar-divider">
    <div class="sidebar-heading text-white-50">Atendimento</div>

    <li class="nav-item {{ request()->is('agendamentos*') ? 'active' : '' }}">
        <a class="nav-link {{ request()->is('agendamentos*') ? '' : 'collapsed' }}" href="#" data-toggle="collapse" data-target="#collapseAgendamentos">
            <i class="fas fa-fw fa-calendar-check"></i>
            <span>Agendamentos</span>
        </a>
        <div id="collapseAgendamentos" class="collapse {{ request()->is('agendamentos*') ? 'show' : '' }}" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item {{ request()->routeIs('agendamentos.index') ? 'active' : '' }}" href="{{ route('agendamentos.index') }}">Listar Todos</a>
                <a class="collapse-item {{ request()->routeIs('agendamentos.create') ? 'active' : '' }}" href="{{ route('agendamentos.create') }}">Novo Agendamento</a>
            </div>
        </div>
    </li>

    <hr class="sidebar-divider">
    <div class="sidebar-heading text-white-50">Catálogo</div>

    <li class="nav-item {{ request()->is('produtos*') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('produtos.index') }}">
            <i class="fas fa-fw fa-box"></i>
            <span>Produtos</span>
        </a>
    </li>

    <li class="nav-item {{ request()->is('categorias*') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('categorias.index') }}">
            <i class="fas fa-fw fa-tags"></i>
            <span>Categorias</span>
        </a>
    </li>

    <li class="nav-item {{ request()->is('subcategorias*') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('subcategorias.index') }}">
            <i class="fas fa-fw fa-stream"></i>
            <span>Subcategorias</span>
        </a>
    </li>

    <hr class="sidebar-divider">
    <div class="sidebar-heading text-white-50">Equipa e Gestão</div>

    <li class="nav-item {{ request()->is('profissionais*') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('profissionais.index') }}">
            <i class="fas fa-fw fa-user-tie"></i>
            <span>Profissionais</span>
        </a>
    </li>

    <li class="nav-item {{ request()->is('servicos*') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('servicos.index') }}">
            <i class="fas fa-fw fa-cut"></i>
            <span>Serviços</span>
        </a>
    </li>

    <hr class="sidebar-divider">
    <div class="sidebar-heading text-white-50">Sistema</div>

    <li class="nav-item {{ request()->routeIs('notifications') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('notifications') }}">
            <i class="fas fa-fw fa-bell"></i>
            <span>Notificações</span>
        </a>
    </li>

    <li class="nav-item {{ request()->routeIs('profile') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('profile') }}">
            <i class="fas fa-fw fa-user-circle"></i>
            <span>{{ __('Meu Perfil') }}</span>
        </a>
    </li>

    <li class="nav-item {{ request()->is('ajustes*') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('ajustes.index') }}">
            <i class="fas fa-fw fa-cogs"></i>
            <span>{{ __('Configurações') }}</span>
        </a>
    </li>

    <hr class="sidebar-divider d-none d-md-block">

    <div class="text-center d-none d-md-inline mt-4">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>