budget_report = ReportType.create(name: 'Budget', description: 'Budget Report')
inventory_report = ReportType.create(name: 'Inventory', description: 'Inventory Report')
revenue_report = ReportType.create(name: 'Revenue', description: 'Revenue Report')

User.create(
  email: 'admin@example.com',
  password: 'adminpass',
  report_admin: true
)
