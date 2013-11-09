# == Class: localization
#
# Module to manage localization
#
class localization (
  $languages = undef,
) {

  if $languages != undef {
    validate_hash($languages)
    create_resources('localization::lang',$languages)
  }
}
