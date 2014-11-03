window.BackboneSample =

  Models: {}

  Collections: {}

  Views: {}

  Routers: {}

  initialize: ->
    @tasksRouter = new BackboneSample.Routers.TasksRouter()
    Backbone.history.start()

$(document).ready ->
  BackboneSample.initialize()


$(document).on 'keydown', (e) ->
  if(e.metaKey && e.keyCode == 73)
    e.preventDefault()
    e.stopPropagation()
    $('#task_title').focus()
