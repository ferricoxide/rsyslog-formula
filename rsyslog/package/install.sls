# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as rsyslog with context %}

rsyslog-package-install-pkg-installed:
  pkg.installed:
    - name: {{ rsyslog.pkg.name }}
