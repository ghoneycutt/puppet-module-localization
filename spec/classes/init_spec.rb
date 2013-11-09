require 'spec_helper'
describe 'localization' do

  context 'with default options' do
    it {
      should include_class('localization')
    }
  end

  context 'with languages specified as a hash' do
    let(:params) {
      {
        :languages => {
          'sv' => {
            'packages' => ['aspell-sv','kde-i18n-Swedish'],
          },
          'foo' => {
            'packages' => ['foo'],
          },
          'bar' => {
            'packages' => ['bar','baz'],
          },
        }
      }
    }

    it {
      should contain_package('localization_lang_sv').with({
        'name' => ['aspell-sv','kde-i18n-Swedish'],
      })
    }

    it {
      should contain_package('localization_lang_foo').with({
        'name' => ['foo'],
      })
    }

    it {
      should contain_package('localization_lang_bar').with({
        'name' => ['bar','baz'],
      })
    }
  end

  context 'with languages specified as an invalid type (array)' do
    let(:params) { { :languages => ['an','array'] } }

    it do
      expect {
        should include_class('localization')
      }.to raise_error(Puppet::Error)
    end
  end
end
