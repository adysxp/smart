```
- platform: template
    sensors:
      openweather_cloud_cover_now:
        friendly_name: "Current Cloud Cover"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[0].clouds</strong> }}"
      openweather_cloud_cover_1:
        friendly_name: "Cloud Cover in 1 Hour"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[1].clouds</strong> }}"
      openweather_cloud_cover_2:
        friendly_name: "Cloud Cover in 2 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[2].clouds</strong> }}"
      openweather_cloud_cover_3:
        friendly_name: "Cloud Cover in 3 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[3].clouds</strong> }}"
      openweather_cloud_cover_4:
        friendly_name: "Cloud Cover in 4 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[4].clouds</strong> }}"
      openweather_cloud_cover_5:
        friendly_name: "Cloud Cover in 5 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[5].clouds</strong> }}"
      openweather_cloud_cover_6:
        friendly_name: "Cloud Cover in 6 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[6].clouds</strong> }}"
      openweather_cloud_cover_7:
        friendly_name: "Cloud Cover in 7 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[7].clouds</strong> }}"
      openweather_cloud_cover_8:
        friendly_name: "Cloud Cover in 8 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[8].clouds</strong> }}"
      openweather_cloud_cover_9:
        friendly_name: "Cloud Cover in 9 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[9].clouds</strong> }}"
      openweather_cloud_cover_10:
        friendly_name: "Cloud Cover in 10 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[10].clouds </strong>}}"
      openweather_cloud_cover_11:
        friendly_name: "Cloud Cover in 11 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[11].clouds</strong> }}"
      openweather_cloud_cover_12:
        friendly_name: "Cloud Cover in 12 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[12].clouds</strong> }}"
      openweather_cloud_cover_13:
        friendly_name: "Cloud Cover in 13 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[13].clouds</strong> }}"
      openweather_cloud_cover_14:
        friendly_name: "Cloud Cover in 14 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[14].clouds</strong> }}"
      openweather_cloud_cover_15:
        friendly_name: "Cloud Cover in 15 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[15].clouds</strong> }}"
      openweather_cloud_cover_16:
        friendly_name: "Cloud Cover in 16 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[16].clouds</strong> }}"
      openweather_cloud_cover_17:
        friendly_name: "Cloud Cover in 17 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[17].clouds</strong> }}"
      openweather_cloud_cover_18:
        friendly_name: "Cloud Cover in 18 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[18].clouds</strong> }}"
      openweather_cloud_cover_19:
        friendly_name: "Cloud Cover in 19 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[19].clouds</strong> }}"
      openweather_cloud_cover_20:
        friendly_name: "Cloud Cover in 20 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[20].clouds</strong> }}"
      openweather_cloud_cover_21:
        friendly_name: "Cloud Cover in 21 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[21].clouds</strong> }}"
      openweather_cloud_cover_22:
        friendly_name: "Cloud Cover in 22 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[22].clouds</strong> }}"
      openweather_cloud_cover_23:
        friendly_name: "Cloud Cover in 23 Hours"
        unit_of_measurement: '%'
        value_template: "{{ state_attr('sensor.openweather_report', '<strong>hourly</strong>')<strong>[23].clouds</strong> }}"
        
        
sensor:
  - platform: rest
    name: openweather_report
    json_attributes:
      - current
      - daily
      - hourly
    value_template: "{{ value_json['current']['dt'] | timestamp_custom('%Y-%m-%d %H:%M', true) }}"
    resource: https://api.openweathermap.org/data/2.5/onecall?lat=<strong>{my_latitude}</strong>=<strong>{my_longitude}</strong>=<strong>{MY_API_KEY}</strong>&units=metric&lang=en
    scan_interval: 3600        
```        

        
