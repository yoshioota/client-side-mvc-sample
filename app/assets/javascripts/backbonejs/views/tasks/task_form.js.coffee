class BackboneSample.Views.TaskForm extends Backbone.View

  el: '.task_form'

  events: {
    'submit .new_task': 'onSubmit'
  }

  onSubmit: (e) ->
    e.preventDefault()

    $.ajax(
      url: '/api/tasks.json',
      type: 'POST',
      data: $('.new_task').serialize(),
    ).done =>
      window.BackboneSample.tasksRouter.collection.fetch({reset: true})
      @initForm()

  initForm: ->
    @$('#task_title').val('')
