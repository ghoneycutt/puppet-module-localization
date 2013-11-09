require 'spec_helper'

describe 'localization::lang' do
  context 'should ensure package is present' do
    let(:title) { 'sv' }
    let(:params) { { :packages => ['aspell-sv','kde-i18n-Swedish'] } }

    it {
      should contain_package('localization_lang_sv').with({
        'name' => ['aspell-sv','kde-i18n-Swedish'],
      })
    }
  end
end
