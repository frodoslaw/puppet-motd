require 'spec_helper_puppet'

describe 'motd', type: :class do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }
      it { is_expected.to compile }
      it { is_expected.to contain_class('motd') }
      it {
        is_expected.to contain_file('/etc/motd').with(
          ensure: 'file',
          owner:  'root',
          group:  'root',
          mode:   '0440'
        )
      }
    end
  end
end
