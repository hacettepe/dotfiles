# originally krisleech's theme.
# just edited to see whole pwd

function _git_branch_name
  echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)

  if [ (id -u) = 0 ]
    set primary (set_color -o red)
    set secondary (set_color -o green)
  else
    set primary (set_color -o green)
    set secondary (set_color -o red)
  end

  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l cwd $primary(prompt_pwd)

  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)
    set git_info "$primary$git_branch "

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow✗"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $cwd $secondary '|' $git_info $blue ⇒ ' ' $normal
end