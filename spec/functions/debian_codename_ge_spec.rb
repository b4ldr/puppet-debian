require 'spec_helper'
describe 'debian::codename::ge' do
  on_supported_os(supported_os: ['operatingsystem' => 'Debian', 'operatingsystemrelease' => ['10']]).each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      it { is_expected.to run.with_params('bookworm').and_return(false) }
      it { is_expected.to run.with_params('stretch').and_return(true) }
      it { is_expected.to run.with_params('jessie').and_return(true) }
    end
  end
  on_supported_os(supported_os: ['operatingsystem' => 'Ubuntu', 'operatingsystemrelease' => ['22.04']]).each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      it { is_expected.to run.with_params('noble').and_return(false) }
      it { is_expected.to run.with_params('focal').and_return(true) }
      it { is_expected.to run.with_params('jammy').and_return(true) }
    end
  end
end
