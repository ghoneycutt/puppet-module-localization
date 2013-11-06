# == Define: localization::lang
#
# Install packages to support a given language
#
define localization::lang (
  $packages,
) {

  package { "localization_lang_${name}":
    ensure => present,
    name   => $packages,
  }
}
