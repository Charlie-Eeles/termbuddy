tebu() {
  case "$1" in
    set-home)
      export TERMBUDDY_HOME=$(pwd)
      echo "TERMBUDDY_HOME set to $(pwd)"
      ;;
    jump)
      if [[ -z "$2" ]]; then
        search_dir="${TERMBUDDY_HOME:-$(pwd)}"
        cd "$search_dir" || { echo "TERMBUDDY_HOME not set or directory does not exist"; return 1; }
      else
        search_dir="${TERMBUDDY_HOME:-$(pwd)}"
        target_dir=$(rg --files "$search_dir" | rg "$2" | fzf | xargs dirname)

        if [[ -n "$target_dir" ]]; then
          cd "$target_dir" || { echo "Directory not found: $target_dir"; return 1; }
        else
          echo "No matching directory found for: $2"
          return 1
        fi
      fi
      ;;
    *)
      echo "Usage: tebu [set-home | jump <search_term>]"
      echo "Commands:"
      echo "  set-home            Set the current directory as TERMBUDDY_HOME."
      echo "  jump <search_term>  Jump to a directory by searching files within TERMBUDDY_HOME (or current directory if not set)."
      ;;
  esac
}
