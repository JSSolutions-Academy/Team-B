schema = new SimpleSchema
  name:
    type: String
    label: 'Name'
    min: 1
    max: 32
  holidays:
    type: [schemas.Holiday]
    label: 'Holidays'
    defaultValue: []
    minCount: 0
    maxCount: 2**16
  projects:
    type: [schemas.Project]
    label: 'Projects'
    defaultValue: []
    min: 0
    max: 2 ** 32
  owner:
    type: String
    regEx: SimpleSchema.RegEx.Id
    label: 'Owner'
    denyUpdate: true
    autoform:
      type: 'hidden'
    autoValue: () ->
      @userId if @isInsert
  resources:
    type: [schemas.Resource]
    label: 'Resources'
    defaultValue: []
    minCount: 0
    maxCount: 2**16
  customers:
    type: [schemas.Customer]
    label: 'Customers'
    defaultValue: []
    minCount: 0
    maxCount: 2 ** 16


Namespace 'schemas', Company:schema