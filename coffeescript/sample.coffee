define 'pages/some_page/views/SomePageView', ['app'
                                              'backbone'
                                              'underscore'
                                              'Session'
                                              'gritter-display'
                                              'shared/modals/modal_name/SomeModal'
                                              'shared/views/view_name/SomeView'
                                              'hbs!pages/some_page/templates/sub_element'
                                              'hbs!pages/some_page/templates/some_page' # always named 'template'
                                              'jquery.select-text' # Dependencies that arent specifically defined come last
                                              'select2'
                                              'autosize'
                                              ], (App, Backbone, _, Session, Gritter, SomeModal, SomeView, subElementTemplate, template) ->
  'use strict'     

  class SubElementView extends Backbone.Marionette.ItemView
    template: subElementTemplate

    serializeData:
      blah: @model.get('blah')

  class SomePageView extends Backbone.Marionette.LayoutView
    template  : template # Order these by order of importance/execution. Template first
    id        : ''
    tagName   : ''
    className : ''

    ui:
      element       : '.element'
      oftenAccessed : '.class-name'

    events:
      'click .save-button' : 'save'
      'click @ui.element'  : 'doTheThing'

    initialize: ->

    serializeData: -> # alphabetical or grouped by region in template
      otherProperty : @model.get('something').get('other_property')
      something     : @model.get('something')
      somethingElse : @model.get('something_else')

    onRender: ->

    save: ->

    doTheThing: (param1, param2) ->
