# puppet-module-localization
===

[![Build Status](https://travis-ci.org/ghoneycutt/puppet-module-localization.png?branch=master)](https://travis-ci.org/ghoneycutt/puppet-module-localization)

Ensure installation of language related packages.

===

# Compatibility
---------------
This module is built for use with Puppet v3 and v4 on systems that can
specify a list of packages to be ensured.

===

# Usage

`include ::localization`

# Parameters

### Class: localization

languages
---------
Hash of languages with their respective packages.

- *Default*: undef

### Define: localization::lang

packages
--------
Required string or array of packages to be installed.

===

# Example Hiera configuration

Install Swedish language on EL 5

``` yaml
localization::languages:
  'sv':
    packages:
      - aspell-sv
      - kde-i18n-Swedish
```

Install Swedish language on EL 6

``` yaml
localization::languages:
  'sv':
    packages:
      - eclipse-nls-sv
      - hunspell-sv
      - kde-i18n-Swedish
      - kde-l10n-Swedish
```
