{% macro anonymize(field) %}
    md5({{ field }})
{% endmacro %}
