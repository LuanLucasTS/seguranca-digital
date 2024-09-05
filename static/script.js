  document.addEventListener('DOMContentLoaded', function() {
    updateProgressBar();
  });

  function updateProgressBar() {
    const rows = document.querySelectorAll('.row');
    const totalRows = rows.length;
    let completedRows = 0;

    rows.forEach(row => {
      const checkbox = row.querySelector('input[type="checkbox"]:not(.form-check-input)');
      const switchElement = row.querySelector('input.form-check-input[type="checkbox"]');

      if (checkbox && (checkbox.checked || checkbox.disabled) ||
          (switchElement && switchElement.checked)) {
        completedRows++;
      }
    });

    const progress = ((completedRows / totalRows) * 100).toFixed(2);
    const progressBar = document.getElementById('progressBar');
    progressBar.style.width = `${progress}%`;
    progressBar.setAttribute('aria-valuenow', progress);
  }

  function updateConfig(field, checkbox) {
    const value = checkbox.checked ? 1 : 0;
    fetch(`/update-config`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ field: field, value: value }),
    }).then(() => updateProgressBar());
  }

  function toggleIgnore(field, switchElement, checkboxId) {
    const checkbox = document.getElementById(checkboxId);
    const value = switchElement.checked ? 2 : 0;

    fetch(`/update-config`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ field: field, value: value }),
    }).then(() => {
      if (switchElement.checked) {
        checkbox.checked = false;  // Limpa o checkbox
        checkbox.disabled = true;  // Desabilita o checkbox
      } else {
        checkbox.disabled = false;  // Habilita o checkbox novamente se o switch for desmarcado
      }
      updateProgressBar();
    });
  }