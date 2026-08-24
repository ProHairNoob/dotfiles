if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish --cmd cd | source

# Start SSH agent if not already running
if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c) > /dev/null
end

# Check if the key is already added to avoid prompting twice
if set -q SSH_AUTH_SOCK
    ssh-add -l > /dev/null 2>&1
    if test $status -eq 1
        ssh-add ~/.ssh/id_ed25519 > /dev/null 2>&1
    end
end
alias mc="tmux attach -t mc-server"
# Kanagawa Dragon Palette for Fish Shell
# set -g fish_color_normal c5c9c5
# set -g fish_color_command 8ba4b0
# set -g fish_color_quote c4b28a
# set -g fish_color_redirection a9b1d6
# set -g fish_color_end c4746e
# set -g fish_color_error c4746e
# set -g fish_color_param 8ea4a2
# set -g fish_color_comment 625e5a
# set -g fish_color_match 8ba4b0
# set -g fish_color_selection --background=2a2a37
# set -g fish_color_search_match --background=2a2a37
# set -g fish_color_history_current --bold
# set -g fish_color_operator 8992a7
# set -g fish_color_escape 8992a7
# set -g fish_color_cwd 87a987
# set -g fish_color_cwd_root c4746e
# set -g fish_color_valid_path --underline
# set -g fish_color_autosuggestion 625e5a
# set -g fish_color_user 87a987
# set -g fish_color_host 8ba4b0
# set -g fish_color_host_remote c4b28a
# set -g fish_color_status c4746e
#
# # Pager colors
# set -g fish_pager_color_progress 625e5a
# set -g fish_pager_color_prefix 8ba4b0
# set -g fish_pager_color_completion c5c9c5
# set -g fish_pager_color_description 625e5a
# set -g fish_pager_color_secondary_background --background=16161d
# set -g fish_pager_color_secondary_prefix c4b28a
# set -g fish_pager_color_secondary_completion c5c9c5
# set -g fish_pager_color_secondary_description 625e5a
# set -g fish_pager_color_selected_background --background=2a2a37
# set -g fish_pager_color_selected_prefix c4b28a
# set -g fish_pager_color_selected_completion c5c9c5
# set -g fish_pager_color_selected_description 625e5a
# set -g fish_pager_color_background --background=181616
#
# # Kanagawa Dragon Base Theme Variables for Pure Prompt
# set --global pure_color_primary 8ea4a2      # Teal/Cyan for directories
# set --global pure_color_info 8ba4b0         # Blue for Git updates / Nix
# set --global pure_color_mute 625e5a         # Muted Gray for Git branches / usernames
# set --global pure_color_success c5c9c5      # Standard text color
# set --global pure_color_normal normal
# set --global pure_color_danger c4746e       # Dragon Red for command failures
# set --global pure_color_light c5c9c5
# set --global pure_color_warning c4b28a      # Autumn Yellow for execution timers
# set --global pure_color_dark 16161d         # Background shades
#
# # Pure Specific Components
# set --global pure_color_prompt_on_success c4b28a  # Yellow prompt symbol
# set --global pure_color_prompt_on_error c4746e    # Dragon Red prompt symbol on error
# set --global pure_color_git_branch 625e5a        # Muted branch names
# set --global pure_color_git_dirty c4b28a         # Yellow asterisk warning
#
end
