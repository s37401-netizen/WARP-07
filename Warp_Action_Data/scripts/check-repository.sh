#!/usr/bin/env bash
# Uruchom ten plik przy użyciu interpretera Bash.

set -euo pipefail
# Zatrzymuj wykonanie po błędach i wykrywaj brakujące zmienne.

PROJECT_PATH="${1:-}"
# Pobierz pierwszy argument lub pusty tekst, jeśli argumentu nie podano.

if [[ -z "$PROJECT_PATH" ]]; then
  # Przerwij pracę, jeżeli użytkownik nie podał ścieżki.
  echo "ERROR: Provide a project path as the first argument."
  exit 1
fi

if [[ ! -f "$PROJECT_PATH" ]]; then
  # Przerwij pracę, jeżeli wskazany plik projektu nie istnieje.
  echo "ERROR: Project file not found: $PROJECT_PATH"
  exit 1
fi

if [[ ! -s "README.md" ]]; then
  # Przerwij pracę, jeżeli README nie istnieje lub jest pusty.
  echo "ERROR: README.md is missing or empty."
  exit 1
fi

# Te linie wykonają się tylko wtedy, gdy wszystkie kontrole przejdą.
echo "Repository check passed."
echo "Project: $PROJECT_PATH"
echo "README.md is present and not empty."
