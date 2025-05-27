#!/usr/bin/env bash

# Apps to prompt if saved
prompt_apps=(
	"StataMP"
	"Microsoft Word"
	"Electron" # VSCode, apparently
	"Skim"
)

# Function to test if prompt needed
is_prompt_app() {
  local candidate="$1"
  for i in "${prompt_apps[@]}"; do
    [[ "$i" == "$candidate" ]] && return 0
  done
  return 1
}

apps=()
to_close=()
to_skip=()

while IFS=$'\n' read -r app; do
  #  a) strip carriage‐returns
  app=${app//$'\r'/}
  #  b) trim any leading/trailing spaces
  app=${app##+([[:space:]])}
  app=${app%%+([[:space:]])}

  # only add non‐empty names
  [[ -n $app ]] && apps+=("$app")
done < <(
  osascript \
    -e 'set text item delimiters to "\n"' \
    -e 'tell application "System Events" to (name of every application process whose background only is false) as string' \
  | awk '$0 != "Finder" && $0 != "alacritty"' \
  | sort
)

for app in "${apps[@]}"; do
  if is_prompt_app "$app"; then
    read -p "Did you save your work in $app? [y/N] " ans
    if [[ ! $ans =~ ^[Yy] ]]; then
      to_skip+=("$app")
      continue
    fi
  fi
  to_close+=("$app")
done

# Collect apps to skip/close
if (( ${#to_skip[@]} != 0 )); then
skipped=$(printf ", %s" "${to_skip[@]}")
skipped=${skipped:2}
echo "Skipping: $skipped"
fi

if (( ${#to_close[@]} == 0 )); then
  echo "No apps to close"
  exit 0
fi

closed=$(printf ", %s" "${to_close[@]}")
closed=${closed:2}
echo "Closing: $closed"

# Close apps that are cleared to close
for app in "${to_close[@]}"; do
  killall -TERM "$app"
done
