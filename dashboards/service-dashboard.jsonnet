local grafana = import 'grafonnet/grafana.libsonnet';

local custom = grafana.template.custom(
    name='Static  TVariable',
    query="value1,value2,value3",
    current="value3"
);

local datasources = grafana.template.new(
    name='Data Source TVariable',
    datasource="Prometheus",
    query=""
);

local gcPanel = grafana.graphPanel.new(title='Gc Panel');
local jvmPanels = grafana.row.new(
    title="JVM panels"
).addPanel(gcPanel);



grafana.dashboard.new(
    title='Hello',
    uid='service-dashboard-jvm'
).addTemplate(datasources)
.addTemplate(custom)
.addRow(jvmPanels)