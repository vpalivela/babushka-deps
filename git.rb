dep 'git autocompletion' do
  requires 'git.bin'

  met? { "~/.git-completion.bash".p.exists? }

  meet {
    log_shell "Downloading git-completion.bash", "curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash"
    log_shell "Putting it into .bash_profile", "echo '
# Git Autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi' >> $HOME/.bash_profile"
  }
end
