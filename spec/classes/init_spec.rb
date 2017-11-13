require 'spec_helper'

describe 'motd', type: :class do

  shared_examples 'working motd class' do
    it { is_expected.to compile }
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) { facts }
        it_behaves_like 'working motd class'
      end
    end
  end
end
