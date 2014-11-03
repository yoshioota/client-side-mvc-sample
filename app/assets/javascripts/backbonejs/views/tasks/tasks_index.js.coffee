class BackboneSample.Views.TasksIndex extends Backbone.View

  el: '#tasks'

  initialize: ->
    @collection.on('reset', @render, this)
    this.listenTo(@collection, 'add', this.appendTasks)

  render: ->
    $(@el).html('')
    @collection.each(@appendTasks)
    this

  appendTasks: (task) ->
    view = new BackboneSample.Views.TaskItem(model: task)
    $('#tasks').append(view.render().el)
