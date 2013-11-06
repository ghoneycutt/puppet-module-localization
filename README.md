# puppet-module-localization
===

[![Build Status](https://travis-ci.org/ghoneycutt/puppet-module-localization.png?branch=master)](https://travis-ci.org/ghoneycutt/puppet-module-localization)

Ensure installation of language related packages.

===

# Compatibility
---------------
This module is built for use with Puppet v3 on systems that can specify a list of packages to be ensured. Not Solaris.

===

# Parameters
------------

languages
---------
Hash of languages with their respective packages.

- *Default*: undef

===

# Example Hiera configuration
<pre>
--
:backends:
  - yaml
:hierarchy:
  - fqdn/%{fqdn}
  - roles/%{role}
  - %{environment}
  - osfamily/%{osfamily}-%{lsbmajdistrelease}
  - osfamily/%{osfamily}
  - common

:yaml:
  :datadir:
</pre>

# Example Hiera data

## osfamily/RedHat-5.yaml
<pre>
localization::languages:
  'sv':
    packages:
      - aspell-sv
      - kde-i18n-Swedish
</pre>

## osfamily/RedHat-6.yaml
<pre>
localization::languages:
  'sv':
    packages:
      - eclipse-nls-sv
      - hunspell-sv
      - kde-i18n-Swedish
      - kde-l10n-Swedish
</pre>
