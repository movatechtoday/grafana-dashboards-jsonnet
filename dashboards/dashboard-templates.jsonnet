local grafana = import 'grafonnet/grafana.libsonnet';

/*
* Query variables enable you to write a data source query that can return a list of metric names,
* tag values, or keys.
*
*  See: https://grafana.com/docs/grafana/latest/dashboards/variables/add-template-variables/#add-a-query-variable
*/
local datasourceVariable = grafana.template.new(
    name='Data Source TVariable',
    datasource='Prometheus',
    query=""
);

/**
* Use a custom variable for a value that does not change, such as a number or a string.
*
*  See: https://grafana.com/docs/grafana/latest/dashboards/variables/add-template-variables/#add-a-custom-variable
*/
local customVariable = grafana.template.custom(
    name='Static  TVariable',
    query='value1,value2,value3',
    current='value3'
);


grafana.dashboard.new(
    title='Template Variables',
    uid='dashboard-templates'
).addTemplate(datasourceVariable)
.addTemplate(customVariable)