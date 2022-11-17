{% snapshot snapshot_name %}
    {{
        config(
            unique_key='field',
            strategy='timestamp',
            updated_at='updated_at_field'
        )
    }}

    select * from {{ ref('model') }}
 {% endsnapshot %}
        {{
            config(
                unique_key='field',
                strategy='timestamp',
                updated_at='updated_at_field'
            )
        }}
    
        select * from {{ ref('model') }}
     {% endsnapshot %}
      {{
          config(
              target_schema='RAW',
              unique_key='id',
              strategy='timestamp',
              updated_at='updated_at'
          )
      }}
  
      select *  FROM {{ source('airbnb', 'listings') }}
{% endsnapshot %}

