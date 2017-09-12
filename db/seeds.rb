budget_report = ReportType.create(name: 'Budget', description: 'Budget Report')
inventory_report = ReportType.create(name: 'Inventory', description: 'Inventory Report')
revenue_report = ReportType.create(name: 'Revenue', description: 'Revenue Report')

ReportTypeOption.create([
  { name: 'Rent', report_type_id: budget_report.id },
  { name: 'Utilities', report_type_id: budget_report.id },
  { name: 'Equipment', report_type_id: budget_report.id },
  { name: 'Computers', report_type_id: inventory_report.id },
  { name: 'Phones', report_type_id: inventory_report.id },
  { name: 'Vehicles', report_type_id: inventory_report.id },
  { name: 'Consulting', report_type_id: revenue_report.id },
  { name: 'Sales', report_type_id: revenue_report.id },
  { name: 'Other', report_type_id: revenue_report.id }
])

User.create(
  email: 'admin@example.com',
  password: 'adminpass',
  report_admin: true
)
