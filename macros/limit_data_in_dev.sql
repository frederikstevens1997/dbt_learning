{% macro limit_data_in_dev(column_name, days=3) %}

where {{ column_name }} >= dateadd('day', -{{ days }}, current_timestamp)

{% endmacro %}