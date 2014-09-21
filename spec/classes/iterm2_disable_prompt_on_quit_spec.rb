require 'spec_helper'

describe 'iterm2::disable_prompt_on_quit' do
  it do
    should contain_boxen__osx_defaults('iTerm Disable Prompt On Quit').with({
      :key    => 'PromptOnQuit',
      :domain => 'com.googlecode.iterm2',
      :value  => false,
      :user   => facts[:boxen_user]
    })
  end
end
