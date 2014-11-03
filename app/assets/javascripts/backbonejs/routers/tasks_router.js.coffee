class BackboneSample.Routers.TasksRouter extends Backbone.Router

  routes:
    '': 'index'

  initialize: ->
    @collection = new BackboneSample.Collections.Tasks()
    @collection.fetch(reset: true)

  index: ->
    view = new BackboneSample.Views.TasksIndex(collection: @collection)
    viewForm = new BackboneSample.Views.TaskForm()
    $('#tasks').html(view.render().el)
