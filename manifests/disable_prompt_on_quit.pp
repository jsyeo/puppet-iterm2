# Public: Installs iTerm2 beta
#
# Usage:
#
#   include iterm2::disable_prompt_on_quit
#
class iterm2::disable_prompt_on_quit {
  boxen::osx_defaults { 'iTerm Disable Prompt On Quit':
    ensure => present,
    domain => 'com.googlecode.iterm2',
    key    => 'PromptOnQuit',
    value  => false,
    type   => bool,
    user   => $::boxen_user;
  }
}
