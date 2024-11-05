require 'spec_helper'
require 'pp'

describe 'debian::codename::require' do
  on_supported_os(supported_os: ['operatingsystem' => 'Debian', 'operatingsystemrelease' => ['12']]).each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      it { is_expected.to run.with_params('bookworm').and_return(nil) }
      it { is_expected.to run.with_params('stretch').and_raise_error(/node codename does not meet requirement/) }
      it { is_expected.to run.with_params('bookworm', '>=').and_return(nil) }
      it { is_expected.to run.with_params('bookworm', '<=').and_return(nil) }
      it { is_expected.to run.with_params('bookworm', '>').and_raise_error(/node codename does not meet requirement/) }
      it { is_expected.to run.with_params('stretch', '>').and_return(nil) }
      it { is_expected.to run.with_params('bookworm', '<').and_raise_error(/node codename does not meet requirement/) }
      it { is_expected.to run.with_params('trixie', '<').and_return(nil) }
      it { is_expected.to run.with_params('bookworm', '!=').and_raise_error(/node codename does not meet requirement/) }
      it { is_expected.to run.with_params('jessie', '!=').and_return(nil) }
    end
  end
  on_supported_os(supported_os: ['operatingsystem' => 'Ubuntu', 'operatingsystemrelease' => ['22.04']]).each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      it { is_expected.to run.with_params('jammy').and_return(nil) }
      it { is_expected.to run.with_params('focal').and_raise_error(/node codename does not meet requirement/) }
      it { is_expected.to run.with_params('jammy', '>=').and_return(nil) }
      it { is_expected.to run.with_params('jammy', '<=').and_return(nil) }
      it { is_expected.to run.with_params('jammy', '>').and_raise_error(/node codename does not meet requirement/) }
      it { is_expected.to run.with_params('focal', '>').and_return(nil) }
      it { is_expected.to run.with_params('jammy', '<').and_raise_error(/node codename does not meet requirement/) }
      it { is_expected.to run.with_params('noble', '<').and_return(nil) }
      it { is_expected.to run.with_params('jammy', '!=').and_raise_error(/node codename does not meet requirement/) }
      it { is_expected.to run.with_params('focal', '!=').and_return(nil) }
    end
  end
end
