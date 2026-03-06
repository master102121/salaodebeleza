// Moraes Editais - Main JS (sem Node/npm, via CDN)

// ====== CHART.JS COLORS ======
const COLORS = {
    marrom:      '#6B3A2A',
    marromClaro: '#C49A6C',
    dourado:     '#C8A951',
    douradoClaro:'#E8C97A',
    bege:        '#D4B896',
    begeClaro:   '#F0E6D6',
};

// ====== DASHBOARD CHARTS ======
function initDashboardCharts(data) {
    // Chart: Uploads por mês
    const ctxUploads = document.getElementById('chartUploads');
    if (ctxUploads) {
        new Chart(ctxUploads, {
            type: 'bar',
            data: {
                labels: data.months || [],
                datasets: [{
                    label: 'Editais Publicados',
                    data: data.uploads || [],
                    backgroundColor: COLORS.marrom,
                    borderRadius: 6,
                    borderSkipped: false,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: { display: false },
                    tooltip: {
                        callbacks: {
                            label: ctx => ` ${ctx.raw} editais`
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: { stepSize: 1, font: { family: 'sans-serif', size: 12 } },
                        grid: { color: '#F0E6D6' }
                    },
                    x: {
                        ticks: { font: { family: 'sans-serif', size: 12 } },
                        grid: { display: false }
                    }
                }
            }
        });
    }

    // Chart: Por categoria (donut)
    const ctxCategories = document.getElementById('chartCategories');
    if (ctxCategories && data.categories) {
        const catColors = [COLORS.marrom, COLORS.dourado, COLORS.marromClaro, COLORS.douradoClaro, COLORS.bege, COLORS.begeClaro];
        new Chart(ctxCategories, {
            type: 'doughnut',
            data: {
                labels: data.categories.labels,
                datasets: [{
                    data: data.categories.values,
                    backgroundColor: catColors,
                    borderWidth: 2,
                    borderColor: '#FFFDF9',
                    hoverOffset: 6,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                cutout: '65%',
                plugins: {
                    legend: {
                        position: 'bottom',
                        labels: { font: { family: 'sans-serif', size: 12 }, padding: 16, boxWidth: 14 }
                    }
                }
            }
        });
    }

    // Chart: Status (pizza)
    const ctxStatus = document.getElementById('chartStatus');
    if (ctxStatus && data.status) {
        new Chart(ctxStatus, {
            type: 'pie',
            data: {
                labels: ['Ativo', 'Encerrado', 'Suspenso'],
                datasets: [{
                    data: data.status,
                    backgroundColor: [COLORS.marrom, COLORS.marromClaro, COLORS.dourado],
                    borderWidth: 2,
                    borderColor: '#FFFDF9',
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'bottom',
                        labels: { font: { family: 'sans-serif', size: 12 }, padding: 16 }
                    }
                }
            }
        });
    }

    // Chart: Downloads por edital (linha)
    const ctxDownloads = document.getElementById('chartDownloads');
    if (ctxDownloads && data.downloads) {
        new Chart(ctxDownloads, {
            type: 'line',
            data: {
                labels: data.downloads.labels,
                datasets: [{
                    label: 'Downloads',
                    data: data.downloads.values,
                    borderColor: COLORS.dourado,
                    backgroundColor: 'rgba(200,169,81,0.1)',
                    borderWidth: 2.5,
                    pointBackgroundColor: COLORS.marrom,
                    pointRadius: 4,
                    tension: 0.4,
                    fill: true,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: { legend: { display: false } },
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: { font: { family: 'sans-serif', size: 12 } },
                        grid: { color: '#F0E6D6' }
                    },
                    x: {
                        ticks: { font: { family: 'sans-serif', size: 12 } },
                        grid: { display: false }
                    }
                }
            }
        });
    }
}

// ====== FILE DROP ZONE ======
function initFileDropZone() {
    const zone = document.querySelector('.file-drop-zone');
    const input = document.getElementById('pdf_file');
    const preview = document.getElementById('file-preview');

    if (!zone || !input) return;

    zone.addEventListener('click', () => input.click());

    zone.addEventListener('dragover', e => {
        e.preventDefault();
        zone.classList.add('drag-over');
    });

    zone.addEventListener('dragleave', () => zone.classList.remove('drag-over'));

    zone.addEventListener('drop', e => {
        e.preventDefault();
        zone.classList.remove('drag-over');
        if (e.dataTransfer.files.length) {
            input.files = e.dataTransfer.files;
            showFilePreview(e.dataTransfer.files[0]);
        }
    });

    input.addEventListener('change', () => {
        if (input.files.length) showFilePreview(input.files[0]);
    });

    function showFilePreview(file) {
        if (preview) {
            const size = (file.size / 1024 / 1024).toFixed(2);
            preview.innerHTML = `<div class="d-flex align-center gap-2 mt-3">
                <span style="font-size:28px">📄</span>
                <div>
                    <div style="font-weight:600;font-family:sans-serif;color:var(--marrom)">${file.name}</div>
                    <div class="text-muted">${size} MB</div>
                </div>
            </div>`;
        }
        const dropText = zone.querySelector('.drop-text');
        if (dropText) dropText.innerHTML = `<strong>${file.name}</strong> selecionado`;
    }
}

// ====== CONFIRM DELETE ======
function confirmDelete(form, name) {
    if (confirm(`Tem certeza que deseja excluir "${name}"? Esta ação não pode ser desfeita.`)) {
        form.submit();
    }
}

// ====== AUTO DISMISS ALERTS ======
function initAlerts() {
    setTimeout(() => {
        document.querySelectorAll('.alert-auto-dismiss').forEach(el => {
            el.style.opacity = '0';
            el.style.transition = 'opacity 0.5s';
            setTimeout(() => el.remove(), 500);
        });
    }, 4000);
}

// ====== SIDEBAR MOBILE ======
function toggleSidebar() {
    document.querySelector('.sidebar').classList.toggle('open');
}

// ====== SEARCH TABLE ======
function initTableSearch() {
    const searchInput = document.getElementById('table-search');
    if (!searchInput) return;
    searchInput.addEventListener('input', () => {
        const term = searchInput.value.toLowerCase();
        document.querySelectorAll('tbody tr').forEach(row => {
            row.style.display = row.textContent.toLowerCase().includes(term) ? '' : 'none';
        });
    });
}

// ====== INIT ======
document.addEventListener('DOMContentLoaded', () => {
    initFileDropZone();
    initAlerts();
    initTableSearch();
});
