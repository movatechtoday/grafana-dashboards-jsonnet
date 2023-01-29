local grafana = import 'grafonnet/grafana.libsonnet';

local emptyPanel = grafana.graphPanel.new(title='Empty Panel');
local emptyRow1 = grafana.row.new(
    title='Empty Row 1'
).addPanel(emptyPanel);

local emptyRow2 = grafana.row.new(
    title='Empty Row 2',
    collapse=true
).addPanel(emptyPanel);

local emptyRow3 = grafana.row.new(
    title='Empty Row 3',
    collapse=true
).addPanel(emptyPanel);

grafana.dashboard.new(
    title='Rows',
    uid='dashboard-rows'
).addRow(emptyRow1)
.addRow(emptyRow2)
.addRow(emptyRow3)